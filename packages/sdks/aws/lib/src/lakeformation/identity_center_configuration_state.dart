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
      applicationArn: map['applicationArn'] == null ? null : (map['applicationArn'] as String).input(),
      catalogId: map['catalogId'] == null ? null : (map['catalogId'] as String).input(),
      instanceArn: map['instanceArn'] == null ? null : (map['instanceArn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      resourceShare: map['resourceShare'] == null ? null : (map['resourceShare'] as String).input(),
    );
  }
}

