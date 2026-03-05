// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IdentityCenterConfiguration resources.
class IdentityCenterConfigurationState {
  /// ARN of the Lake Formation applicated integrated with IAM Identity Center.
  final pulumi.Input<String>? applicationArn;
  /// Identifier for the Data Catalog.
  /// By default, the account ID.
  final pulumi.Input<String>? catalogId;
  /// ARN of the IAM Identity Center Instance to associate.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? instanceArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the Resource Access Manager (RAM) resource share.
  final pulumi.Input<String>? resourceShare;

  /// Creates a new [IdentityCenterConfigurationState].
  /// [applicationArn] ARN of the Lake Formation applicated integrated with IAM Identity Center.
  /// [catalogId] Identifier for the Data Catalog.
  /// [instanceArn] ARN of the IAM Identity Center Instance to associate.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceShare] ARN of the Resource Access Manager (RAM) resource share.
  IdentityCenterConfigurationState({
    this.applicationArn,
    this.catalogId,
    this.instanceArn,
    this.region,
    this.resourceShare,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationArn': ?applicationArn,
      'catalogId': ?catalogId,
      'instanceArn': ?instanceArn,
      'region': ?region,
      'resourceShare': ?resourceShare,
    };
  }

  factory IdentityCenterConfigurationState.fromMap(Map<String, dynamic> map) {
    return IdentityCenterConfigurationState(
      applicationArn: (() { final guardedValue = map['applicationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceArn: (() { final guardedValue = map['instanceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceShare: (() { final guardedValue = map['resourceShare']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

