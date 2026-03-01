// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ots_get_instance_attachments_get_instance_attachments_args_doc}
/// Arguments for getInstanceAttachments.
/// {@endtemplate}
/// {@macro pulumi_ots_get_instance_attachments_get_instance_attachments_args_doc}
class GetInstanceAttachmentsArgs {
  /// The name of OTS instance.
  final pulumi.Input<String> instanceName;
  /// A regex string to filter results by vpc name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetInstanceAttachmentsArgs].
  /// [instanceName] The name of OTS instance.
  /// [nameRegex] A regex string to filter results by vpc name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetInstanceAttachmentsArgs({
    required String instanceName,
    String? nameRegex,
    String? outputFile,
  }) :
      instanceName = pulumi.Input.asInput<String>(instanceName),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': instanceName,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetInstanceAttachmentsArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceAttachmentsArgs(
      instanceName: map['instanceName'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

