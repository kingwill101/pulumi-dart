// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAddonPodIdentityAssociation {
  /// ARN of the IAM role associated with the EKS add-on.
  final pulumi.Input<String> roleArn;
  /// Service account associated with the EKS add-on.
  final pulumi.Input<String> serviceAccount;

  /// Creates a new [GetAddonPodIdentityAssociation].
  /// [roleArn] ARN of the IAM role associated with the EKS add-on.
  /// [serviceAccount] Service account associated with the EKS add-on.
  GetAddonPodIdentityAssociation({
    required this.roleArn,
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleArn': roleArn,
      'serviceAccount': serviceAccount,
    };
  }

  factory GetAddonPodIdentityAssociation.fromMap(Map<String, dynamic> map) {
    return GetAddonPodIdentityAssociation(
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
    );
  }
}

