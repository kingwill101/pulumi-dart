// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DomainPolicy resources.
class DomainPolicyState {
  /// IAM policy document specifying the access policies for the domain
  final pulumi.Input<String>? accessPolicies;

  /// Name of the domain.
  final pulumi.Input<String>? domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DomainPolicyState].
  /// [accessPolicies] IAM policy document specifying the access policies for the domain
  /// [domainName] Name of the domain.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DomainPolicyState({this.accessPolicies, this.domainName, this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': ?accessPolicies,
      'domainName': ?domainName,
      'region': ?region,
    };
  }

  factory DomainPolicyState.fromMap(Map<String, dynamic> map) {
    return DomainPolicyState(
      accessPolicies: (() {
        final guardedValue = map['accessPolicies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domainName: (() {
        final guardedValue = map['domainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
