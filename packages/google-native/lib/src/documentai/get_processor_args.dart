// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_documentai_v1_get_processor_args_doc}
/// Arguments for getProcessor.
/// {@endtemplate}
/// {@macro pulumi_documentai_v1_get_processor_args_doc}
class GetProcessorArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> processorId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetProcessorArgs].
  /// [location] Required.
  /// [processorId] Required.
  /// [project] Optional.
  GetProcessorArgs({
    required String location,
    required String processorId,
    String? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      processorId = pulumi.Input.asInput<String>(processorId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'processorId': processorId,
      'project': ?project,
    };
  }

  factory GetProcessorArgs.fromMap(Map<String, dynamic> map) {
    return GetProcessorArgs(
      location: map['location'] as String,
      processorId: map['processorId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

