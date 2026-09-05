// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResolverDnsSecConfig resources.
class ResolverDnsSecConfigState {
  /// The ARN for a configuration for DNSSEC validation.
  final pulumi.Input<String?>? arn;
  /// Owner account ID of the VPC for a configuration for DNSSEC validation.
  final pulumi.Input<String?>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID of the VPC that you're updating the DNSSEC validation status for.
  final pulumi.Input<String?>? resourceId;
  /// The validation status for a DNSSEC configuration. The status can be one of the following: `ENABLING`, `ENABLED`, `DISABLING` and `DISABLED`.
  final pulumi.Input<String?>? validationStatus;

  /// Creates a new [ResolverDnsSecConfigState].
  /// [arn] The ARN for a configuration for DNSSEC validation.
  /// [ownerId] Owner account ID of the VPC for a configuration for DNSSEC validation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] ID of the VPC that you're updating the DNSSEC validation status for.
  /// [validationStatus] The validation status for a DNSSEC configuration. The status can be one of the following: `ENABLING`, `ENABLED`, `DISABLING` and `DISABLED`.
  const ResolverDnsSecConfigState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationStatus: (() { final guardedValue = map['validationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
