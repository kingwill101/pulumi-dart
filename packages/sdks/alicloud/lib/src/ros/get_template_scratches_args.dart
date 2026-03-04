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
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      templateScratchType: (() {
        final guardedValue = map['templateScratchType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
