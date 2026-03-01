// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Page resources.
class PageState {
  /// The Base64-encoded content of the error page. The content type is specified by the Content-Type field.
  final pulumi.Input<String>? content;
  /// The Content-Type field in the HTTP header.
  final pulumi.Input<String>? contentType;
  /// The description of the custom error page.
  final pulumi.Input<String>? description;
  /// The name of the custom response page.
  final pulumi.Input<String>? pageName;

  /// Creates a new [PageState].
  /// [content] The Base64-encoded content of the error page. The content type is specified by the Content-Type field.
  /// [contentType] The Content-Type field in the HTTP header.
  /// [description] The description of the custom error page.
  /// [pageName] The name of the custom response page.
  PageState({
    pulumi.Output<String>? content,
    pulumi.Output<String>? contentType,
    pulumi.Output<String>? description,
    pulumi.Output<String>? pageName,
  }) :
      content = pulumi.Input.asOptionalInput<String>(content),
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      description = pulumi.Input.asOptionalInput<String>(description),
      pageName = pulumi.Input.asOptionalInput<String>(pageName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'contentType': ?contentType,
      'description': ?description,
      'pageName': ?pageName,
    };
  }

  factory PageState.fromMap(Map<String, dynamic> map) {
    return PageState(
      content: map['content'] == null ? null : pulumi.Output.create<String>(map['content'] as String),
      contentType: map['contentType'] == null ? null : pulumi.Output.create<String>(map['contentType'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      pageName: map['pageName'] == null ? null : pulumi.Output.create<String>(map['pageName'] as String),
    );
  }
}

