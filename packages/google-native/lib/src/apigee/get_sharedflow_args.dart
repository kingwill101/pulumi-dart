// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_sharedflow_args_doc}
/// Arguments for getSharedflow.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_sharedflow_args_doc}
class GetSharedflowArgs {
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> sharedflowId;

  /// Creates a new [GetSharedflowArgs].
  /// [organizationId] Required.
  /// [sharedflowId] Required.
  GetSharedflowArgs({
    required String organizationId,
    required String sharedflowId,
  })  : organizationId = pulumi.Input.asInput<String>(organizationId),
        sharedflowId = pulumi.Input.asInput<String>(sharedflowId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationId'] = organizationId;
    map['sharedflowId'] = sharedflowId;
    return map;
  }

  factory GetSharedflowArgs.fromMap(Map<String, dynamic> map) {
    return GetSharedflowArgs(
      organizationId: map['organizationId'] as String,
      sharedflowId: map['sharedflowId'] as String,
    );
  }
}
