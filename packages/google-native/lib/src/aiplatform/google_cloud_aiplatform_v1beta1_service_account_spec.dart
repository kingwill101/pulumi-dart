// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the use of custom service account to run the workloads.
class GoogleCloudAiplatformV1beta1ServiceAccountSpec {
  /// If true, custom user-managed service account is enforced to run any workloads (for example, Vertex Jobs) on the resource. Otherwise, uses the [Vertex AI Custom Code Service Agent](https://cloud.google.com/vertex-ai/docs/general/access-control#service-agents).
  final bool enableCustomServiceAccount;

  /// Optional. Default service account that this PersistentResource's workloads run as. The workloads include: * Any runtime specified via `ResourceRuntimeSpec` on creation time, for example, Ray. * Jobs submitted to PersistentResource, if no other service account specified in the job specs. Only works when custom service account is enabled and users have the `iam.serviceAccounts.actAs` permission on this service account. Required if any containers are specified in `ResourceRuntimeSpec`.
  final String? serviceAccount;

  /// Creates a new [GoogleCloudAiplatformV1beta1ServiceAccountSpec].
  /// [enableCustomServiceAccount] If true, custom user-managed service account is enforced to run any workloads (for example, Vertex Jobs) on the resource. Otherwise, uses the [Vertex AI Custom Code Service Agent](https://cloud.google.com/vertex-ai/docs/general/access-control#service-agents).
  /// [serviceAccount] Optional. Default service account that this PersistentResource's workloads run as. The workloads include: * Any runtime specified via `ResourceRuntimeSpec` on creation time, for example, Ray. * Jobs submitted to PersistentResource, if no other service account specified in the job specs. Only works when custom service account is enabled and users have the `iam.serviceAccounts.actAs` permission on this service account. Required if any containers are specified in `ResourceRuntimeSpec`.
  GoogleCloudAiplatformV1beta1ServiceAccountSpec({
    required this.enableCustomServiceAccount,
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableCustomServiceAccount': enableCustomServiceAccount,
      'serviceAccount': ?serviceAccount,
    };
  }

  factory GoogleCloudAiplatformV1beta1ServiceAccountSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1ServiceAccountSpec(
      enableCustomServiceAccount: map['enableCustomServiceAccount'] as bool,
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
    );
  }
}
