// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_documentai_v1beta3_get_processor_documentai_v1beta3_args_doc}
/// Arguments for getProcessor.
/// {@endtemplate}
/// {@macro pulumi_documentai_v1beta3_get_processor_documentai_v1beta3_args_doc}
class GetProcessorDocumentaiV1beta3Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> processorId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetProcessorDocumentaiV1beta3Args].
  /// [location] Required.
  /// [processorId] Required.
  /// [project] Optional.
  GetProcessorDocumentaiV1beta3Args({
    required String location,
    required String processorId,
    String? project,
  })  : location = pulumi.Input.asInput<String>(location),
        processorId = pulumi.Input.asInput<String>(processorId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['processorId'] = processorId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetProcessorDocumentaiV1beta3Args.fromMap(Map<String, dynamic> map) {
    return GetProcessorDocumentaiV1beta3Args(
      location: map['location'] as String,
      processorId: map['processorId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
