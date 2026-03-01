// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ros_get_templates_get_templates_args_doc}
/// Arguments for getTemplates.
/// {@endtemplate}
/// {@macro pulumi_ros_get_templates_get_templates_args_doc}
class GetTemplatesArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Template IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Template name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Share Type. Valid Values: `Private`, `Shared`
  final pulumi.Input<String>? shareType;
  /// Query the resource bound to the tag. The format of the incoming value is `json` string, including `TagKey` and `TagValue`. `TagKey` cannot be null, and `TagValue` can be empty. Format example `{"key1":"value1"}`.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the template.  The name can be up to 255 characters in length and can contain digits, letters, hyphens (-), and underscores (_). It must start with a digit or letter.
  final pulumi.Input<String>? templateName;

  /// Creates a new [GetTemplatesArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Template IDs.
  /// [nameRegex] A regex string to filter results by Template name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [shareType] Share Type. Valid Values: `Private`, `Shared`
  /// [tags] Query the resource bound to the tag. The format of the incoming value is `json` string, including `TagKey` and `TagValue`. `TagKey` cannot be null, and `TagValue` can be empty. Format example `{"key1":"value1"}`.
  /// [templateName] The name of the template.  The name can be up to 255 characters in length and can contain digits, letters, hyphens (-), and underscores (_). It must start with a digit or letter.
  GetTemplatesArgs({
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? shareType,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? templateName,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      shareType = pulumi.Input.asOptionalInput<String>(shareType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      templateName = pulumi.Input.asOptionalInput<String>(templateName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'shareType': ?shareType,
      'tags': ?tags,
      'templateName': ?templateName,
    };
  }

  factory GetTemplatesArgs.fromMap(Map<String, dynamic> map) {
    return GetTemplatesArgs(
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      shareType: map['shareType'] == null ? null : pulumi.Output.create<String>(map['shareType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      templateName: map['templateName'] == null ? null : pulumi.Output.create<String>(map['templateName'] as String),
    );
  }
}

