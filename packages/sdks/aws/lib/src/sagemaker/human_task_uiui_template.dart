// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HumanTaskUIUiTemplate {
  /// The content of the Liquid template for the worker user interface.
  final pulumi.Input<String>? content;
  /// The SHA-256 digest of the contents of the template.
  final pulumi.Input<String>? contentSha256;
  /// The URL for the user interface template.
  final pulumi.Input<String>? url;

  /// Creates a new [HumanTaskUIUiTemplate].
  /// [content] The content of the Liquid template for the worker user interface.
  /// [contentSha256] The SHA-256 digest of the contents of the template.
  /// [url] The URL for the user interface template.
  const HumanTaskUIUiTemplate({
    this.content,
    this.contentSha256,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'contentSha256': ?contentSha256,
      'url': ?url,
    };
  }

  factory HumanTaskUIUiTemplate.fromMap(Map<String, dynamic> map) {
    return HumanTaskUIUiTemplate(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentSha256: (() { final guardedValue = map['contentSha256']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
