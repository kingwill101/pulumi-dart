// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OrganizationConfiguration resources.
class OrganizationConfigurationState {
  /// When this setting is enabled, all new accounts that are created in, or added to, the organization are added as a member accounts of the organization’s Detective delegated administrator and Detective is enabled in that AWS Region.
  final pulumi.Input<bool>? autoEnable;
  /// ARN of the behavior graph.
  final pulumi.Input<String>? graphArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [OrganizationConfigurationState].
  /// [autoEnable] When this setting is enabled, all new accounts that are created in, or added to, the organization are added as a member accounts of the organization’s Detective delegated administrator and Detective is enabled in that AWS Region.
  /// [graphArn] ARN of the behavior graph.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  OrganizationConfigurationState({
    pulumi.Output<bool>? autoEnable,
    pulumi.Output<String>? graphArn,
    pulumi.Output<String>? region,
  }) :
      autoEnable = pulumi.Input.asOptionalInput<bool>(autoEnable),
      graphArn = pulumi.Input.asOptionalInput<String>(graphArn),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoEnable': ?autoEnable,
      'graphArn': ?graphArn,
      'region': ?region,
    };
  }

  factory OrganizationConfigurationState.fromMap(Map<String, dynamic> map) {
    return OrganizationConfigurationState(
      autoEnable: map['autoEnable'] == null ? null : pulumi.Output.create<bool>(map['autoEnable'] as bool),
      graphArn: map['graphArn'] == null ? null : pulumi.Output.create<String>(map['graphArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

