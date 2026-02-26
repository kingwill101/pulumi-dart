// ignore_for_file: unused_element, unnecessary_cast

class ContainerServicePrivateRegistryAccessEcrImagePullerRole {
  /// Whether to activate the role. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? isActive;

  /// Principal ARN of the container service. The principal ARN can be used to create a trust relationship between your standard AWS account and your Lightsail container service.
  final String? principalArn;

  ContainerServicePrivateRegistryAccessEcrImagePullerRole({
    this.isActive,
    this.principalArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final isActiveValue = isActive;
    if (isActiveValue != null) {
      map['isActive'] = isActiveValue;
    }
    final principalArnValue = principalArn;
    if (principalArnValue != null) {
      map['principalArn'] = principalArnValue;
    }
    return map;
  }

  factory ContainerServicePrivateRegistryAccessEcrImagePullerRole.fromMap(
      Map<String, dynamic> map) {
    return ContainerServicePrivateRegistryAccessEcrImagePullerRole(
      isActive: map['isActive'] == null ? null : map['isActive'] as bool,
      principalArn:
          map['principalArn'] == null ? null : map['principalArn'] as String,
    );
  }
}
