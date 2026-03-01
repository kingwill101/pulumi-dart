// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ros_template_template_args_doc}
/// The set of arguments for Template.
/// {@endtemplate}
/// {@macro pulumi_ros_template_template_args_doc}
class TemplateArgs {
  /// The description of the template. The description can be up to 256 characters in length.
  final pulumi.Input<String>? description;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The structure that contains the template body. The template body must be 1 to 524,288 bytes in length.  If the length of the template body is longer than required, we recommend that you add parameters to the HTTP POST request body to avoid request failures due to excessive length of URLs.  You must specify one of the TemplateBody and TemplateURL parameters, but you cannot specify both of them.
  final pulumi.Input<String>? templateBody;
  /// The name of the template. The name can be up to 255 characters in length and can contain digits, letters, hyphens (-), and underscores (_). It must start with a digit or letter.
  final pulumi.Input<String> templateName;
  /// The template url.
  final pulumi.Input<String>? templateUrl;

  /// Creates a new [TemplateArgs].
  /// [description] The description of the template. The description can be up to 256 characters in length.
  /// [tags] A mapping of tags to assign to the resource.
  /// [templateBody] The structure that contains the template body. The template body must be 1 to 524,288 bytes in length.  If the length of the template body is longer than required, we recommend that you add parameters to the HTTP POST request body to avoid request failures due to excessive length of URLs.  You must specify one of the TemplateBody and TemplateURL parameters, but you cannot specify both of them.
  /// [templateName] The name of the template. The name can be up to 255 characters in length and can contain digits, letters, hyphens (-), and underscores (_). It must start with a digit or letter.
  /// [templateUrl] The template url.
  TemplateArgs({
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? templateBody,
    required pulumi.Output<String> templateName,
    pulumi.Output<String>? templateUrl,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      templateBody = pulumi.Input.asOptionalInput<String>(templateBody),
      templateName = pulumi.Input.asInput<String>(templateName),
      templateUrl = pulumi.Input.asOptionalInput<String>(templateUrl);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'tags': ?tags,
      'templateBody': ?templateBody,
      'templateName': templateName,
      'templateUrl': ?templateUrl,
    };
  }

  factory TemplateArgs.fromMap(Map<String, dynamic> map) {
    return TemplateArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      templateBody: map['templateBody'] == null ? null : pulumi.Output.create<String>(map['templateBody'] as String),
      templateName: pulumi.Output.create<String>(map['templateName'] as String),
      templateUrl: map['templateUrl'] == null ? null : pulumi.Output.create<String>(map['templateUrl'] as String),
    );
  }
}

