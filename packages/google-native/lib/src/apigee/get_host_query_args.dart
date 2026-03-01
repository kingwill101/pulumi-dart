// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_host_query_args_doc}
/// Arguments for getHostQuery.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_host_query_args_doc}
class GetHostQueryArgs {
  final pulumi.Input<String> hostQueryId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetHostQueryArgs].
  /// [hostQueryId] Required.
  /// [organizationId] Required.
  GetHostQueryArgs({
    required String hostQueryId,
    required String organizationId,
  }) : hostQueryId = pulumi.Input.asInput<String>(hostQueryId),
       organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostQueryId': hostQueryId,
      'organizationId': organizationId,
    };
  }

  factory GetHostQueryArgs.fromMap(Map<String, dynamic> map) {
    return GetHostQueryArgs(
      hostQueryId: map['hostQueryId'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
