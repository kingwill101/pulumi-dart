// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResolverDnsSecConfig resources.
class ResolverDnsSecConfigState {
  /// The ARN for a configuration for DNSSEC validation.
  final pulumi.Input<String>? arn;
  /// The owner account ID of the virtual private cloud (VPC) for a configuration for DNSSEC validation.
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the virtual private cloud (VPC) that you're updating the DNSSEC validation status for.
  final pulumi.Input<String>? resourceId;
  /// The validation status for a DNSSEC configuration. The status can be one of the following: `ENABLING`, `ENABLED`, `DISABLING` and `DISABLED`.
  final pulumi.Input<String>? validationStatus;

  /// Creates a new [ResolverDnsSecConfigState].
  /// [arn] The ARN for a configuration for DNSSEC validation.
  /// [ownerId] The owner account ID of the virtual private cloud (VPC) for a configuration for DNSSEC validation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] The ID of the virtual private cloud (VPC) that you're updating the DNSSEC validation status for.
  /// [validationStatus] The validation status for a DNSSEC configuration. The status can be one of the following: `ENABLING`, `ENABLED`, `DISABLING` and `DISABLED`.
  ResolverDnsSecConfigState({
    this.arn,
    this.ownerId,
    this.region,
    this.resourceId,
    this.validationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'ownerId': ?ownerId,
      'region': ?region,
      'resourceId': ?resourceId,
      'validationStatus': ?validationStatus,
    };
  }

  factory ResolverDnsSecConfigState.fromMap(Map<String, dynamic> map) {
    return ResolverDnsSecConfigState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      ownerId: map['ownerId'] == null ? null : (map['ownerId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      validationStatus: map['validationStatus'] == null ? null : (map['validationStatus'] as String).input(),
    );
  }
}

