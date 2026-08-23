// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DefaultDomain resources.
class DefaultDomainState {
  /// Mail domain name to set as the default.
  final pulumi.Input<String>? domainName;
  /// Identifier of the WorkMail organization. Changing this forces a new resource.
  final pulumi.Input<String>? organizationId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DefaultDomainState].
  /// [domainName] Mail domain name to set as the default.
  /// [organizationId] Identifier of the WorkMail organization. Changing this forces a new resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const DefaultDomainState({
    this.domainName,
    this.organizationId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'organizationId': ?organizationId,
      'region': ?region,
    };
  }

  factory DefaultDomainState.fromMap(Map<String, dynamic> map) {
    return DefaultDomainState(
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationId: (() { final guardedValue = map['organizationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
