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
    pulumi.Output<String>? applicationArn,
    pulumi.Output<String>? catalogId,
    pulumi.Output<String>? instanceArn,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceShare,
  }) :
      applicationArn = pulumi.Input.asOptionalInput<String>(applicationArn),
      catalogId = pulumi.Input.asOptionalInput<String>(catalogId),
      instanceArn = pulumi.Input.asOptionalInput<String>(instanceArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceShare = pulumi.Input.asOptionalInput<String>(resourceShare);

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
      applicationArn: map['applicationArn'] == null ? null : pulumi.Output.create<String>(map['applicationArn'] as String),
      catalogId: map['catalogId'] == null ? null : pulumi.Output.create<String>(map['catalogId'] as String),
      instanceArn: map['instanceArn'] == null ? null : pulumi.Output.create<String>(map['instanceArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceShare: map['resourceShare'] == null ? null : pulumi.Output.create<String>(map['resourceShare'] as String),
    );
  }
}

