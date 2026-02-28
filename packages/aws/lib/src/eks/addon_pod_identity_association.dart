// ignore_for_file: unused_element, unnecessary_cast

class AddonPodIdentityAssociation {
  /// The Amazon Resource Name (ARN) of the IAM role to associate with the service account. The EKS Pod Identity agent manages credentials to assume this role for applications in the containers in the pods that use this service account.
  final String roleArn;

  /// The name of the Kubernetes service account inside the cluster to associate the IAM credentials with.
  final String serviceAccount;

  /// Creates a new [AddonPodIdentityAssociation].
  /// [roleArn] The Amazon Resource Name (ARN) of the IAM role to associate with the service account. The EKS Pod Identity agent manages credentials to assume this role for applications in the containers in the pods that use this service account.
  /// [serviceAccount] The name of the Kubernetes service account inside the cluster to associate the IAM credentials with.
  AddonPodIdentityAssociation({
    required this.roleArn,
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['roleArn'] = roleArn;
    map['serviceAccount'] = serviceAccount;
    return map;
  }

  factory AddonPodIdentityAssociation.fromMap(Map<String, dynamic> map) {
    return AddonPodIdentityAssociation(
      roleArn: map['roleArn'] as String,
      serviceAccount: map['serviceAccount'] as String,
    );
  }
}
