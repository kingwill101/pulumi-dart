// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ros_get_template_scratches_get_template_scratches_args_doc}
/// Arguments for getTemplateScratches.
/// {@endtemplate}
/// {@macro pulumi_ros_get_template_scratches_get_template_scratches_args_doc}
class GetTemplateScratchesArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Template Scratch IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the resource. Valid Values: `GENERATE_IN_PROGRESS`, `GENERATE_COMPLETE` and `GENERATE_FAILED`.
  final pulumi.Input<String>? status;
  /// The type of the template scratch. Valid Values: `ResourceImport`, `ArchitectureReplication`.
  final pulumi.Input<String>? templateScratchType;

  /// Creates a new [GetTemplateScratchesArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Template Scratch IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the resource. Valid Values: `GENERATE_IN_PROGRESS`, `GENERATE_COMPLETE` and `GENERATE_FAILED`.
  /// [templateScratchType] The type of the template scratch. Valid Values: `ResourceImport`, `ArchitectureReplication`.
  GetTemplateScratchesArgs({
    this.enableDetails,
    this.ids,
    this.outputFile,
    this.status,
    this.templateScratchType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
      'templateScratchType': ?templateScratchType,
    };
  }

  factory GetTemplateScratchesArgs.fromMap(Map<String, dynamic> map) {
    return GetTemplateScratchesArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails']! as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      templateScratchType: map['templateScratchType'] == null ? null : (map['templateScratchType']! as String).input(),
    );
  }
}

