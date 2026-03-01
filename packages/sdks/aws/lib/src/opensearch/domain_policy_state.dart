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
  DomainPolicyState({
    pulumi.Output<String>? accessPolicies,
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? region,
  }) :
      accessPolicies = pulumi.Input.asOptionalInput<String>(accessPolicies),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': ?accessPolicies,
      'domainName': ?domainName,
      'region': ?region,
    };
  }

  factory DomainPolicyState.fromMap(Map<String, dynamic> map) {
    return DomainPolicyState(
      accessPolicies: map['accessPolicies'] == null ? null : pulumi.Output.create<String>(map['accessPolicies'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

