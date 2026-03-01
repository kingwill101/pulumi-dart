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
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
    pulumi.Output<String>? templateScratchType,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      templateScratchType = pulumi.Input.asOptionalInput<String>(templateScratchType);

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
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      templateScratchType: map['templateScratchType'] == null ? null : pulumi.Output.create<String>(map['templateScratchType'] as String),
    );
  }
}

