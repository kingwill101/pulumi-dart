// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerServicePrivateRegistryAccessEcrImagePullerRole {
  /// Whether to activate the role. Defaults to `false`.
  final pulumi.Input<bool>? isActive;
  /// Principal ARN of the container service. The principal ARN can be used to create a trust relationship between your standard AWS account and your Lightsail container service.
  final pulumi.Input<String>? principalArn;

  /// Creates a new [ContainerServicePrivateRegistryAccessEcrImagePullerRole].
  /// [isActive] Whether to activate the role. Defaults to `false`.
  /// [principalArn] Principal ARN of the container service. The principal ARN can be used to create a trust relationship between your standard AWS account and your Lightsail container service.
  ContainerServicePrivateRegistryAccessEcrImagePullerRole({
    this.isActive,
    this.principalArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isActive': ?isActive,
      'principalArn': ?principalArn,
    };
  }

  factory ContainerServicePrivateRegistryAccessEcrImagePullerRole.fromMap(Map<String, dynamic> map) {
    return ContainerServicePrivateRegistryAccessEcrImagePullerRole(
      isActive: map['isActive'] == null ? null : ((map['isActive'] as bool).input()).input(),
      principalArn: map['principalArn'] == null ? null : ((map['principalArn'] as String).input()).input(),
    );
  }
}

