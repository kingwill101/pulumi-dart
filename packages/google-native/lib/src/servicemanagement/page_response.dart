// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a documentation page. A page can contain subpages to represent nested documentation set structure.
class PageResponse {
  /// The Markdown content of the page. You can use (== include {path} ==) to include content from a Markdown file. The content can be used to produce the documentation page such as HTML format page.
  final String content;

  /// The name of the page. It will be used as an identity of the page to generate URI of the page, text of the link to this page in navigation, etc. The full page name (start from the root page name to this page concatenated with `.`) can be used as reference to the page in your documentation. For example: pages: - name: Tutorial content: (== include tutorial.md ==) subpages: - name: Java content: (== include tutorial_java.md ==) You can reference `Java` page using Markdown reference link syntax: `Java`.
  final String name;

  /// Subpages of this page. The order of subpages specified here will be honored in the generated docset.
  final List<PageResponse> subpages;

  /// Creates a new [PageResponse].
  /// [content] The Markdown content of the page. You can use (== include {path} ==) to include content from a Markdown file. The content can be used to produce the documentation page such as HTML format page.
  /// [name] The name of the page. It will be used as an identity of the page to generate URI of the page, text of the link to this page in navigation, etc. The full page name (start from the root page name to this page concatenated with `.`) can be used as reference to the page in your documentation. For example: pages: - name: Tutorial content: (== include tutorial.md ==) subpages: - name: Java content: (== include tutorial_java.md ==) You can reference `Java` page using Markdown reference link syntax: `Java`.
  /// [subpages] Subpages of this page. The order of subpages specified here will be honored in the generated docset.
  PageResponse({
    required this.content,
    required this.name,
    required this.subpages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['content'] = content;
    map['name'] = name;
    map['subpages'] =
        pulumi.Input.encodeList<PageResponse, Map<String, dynamic>>(
            subpages, (value) => value.toMap());
    return map;
  }

  factory PageResponse.fromMap(Map<String, dynamic> map) {
    return PageResponse(
      content: map['content'] as String,
      name: map['name'] as String,
      subpages: pulumi.Input.decodeList<PageResponse>(
          map['subpages'],
          (value) =>
              PageResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
