// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_v1_get_provider_args_doc}
/// Arguments for getProvider.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_get_provider_args_doc}
class GetProviderArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> providerId;
  final pulumi.Input<String> workloadIdentityPoolId;

  /// Creates a new [GetProviderArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [providerId] Required.
  /// [workloadIdentityPoolId] Required.
  GetProviderArgs({
    required String location,
    String? project,
    required String providerId,
    required String workloadIdentityPoolId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      providerId = pulumi.Input.asInput<String>(providerId),
      workloadIdentityPoolId = pulumi.Input.asInput<String>(workloadIdentityPoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'providerId': providerId,
      'workloadIdentityPoolId': workloadIdentityPoolId,
    };
  }

  factory GetProviderArgs.fromMap(Map<String, dynamic> map) {
    return GetProviderArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      providerId: map['providerId'] as String,
      workloadIdentityPoolId: map['workloadIdentityPoolId'] as String,
    );
  }
}

