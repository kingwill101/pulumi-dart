// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_context_args_doc}
/// Arguments for getContext.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_context_args_doc}
class GetContextArgs {
  final pulumi.Input<String> contextId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> metadataStoreId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetContextArgs].
  /// [contextId] Required.
  /// [location] Required.
  /// [metadataStoreId] Required.
  /// [project] Optional.
  GetContextArgs({
    required String contextId,
    required String location,
    required String metadataStoreId,
    String? project,
  })  : contextId = pulumi.Input.asInput<String>(contextId),
        location = pulumi.Input.asInput<String>(location),
        metadataStoreId = pulumi.Input.asInput<String>(metadataStoreId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contextId'] = contextId;
    map['location'] = location;
    map['metadataStoreId'] = metadataStoreId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetContextArgs.fromMap(Map<String, dynamic> map) {
    return GetContextArgs(
      contextId: map['contextId'] as String,
      location: map['location'] as String,
      metadataStoreId: map['metadataStoreId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
