// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_detective_organization_configuration_organization_configuration_args_doc}
/// The set of arguments for OrganizationConfiguration.
/// {@endtemplate}
/// {@macro pulumi_detective_organization_configuration_organization_configuration_args_doc}
class OrganizationConfigurationArgs {
  /// When this setting is enabled, all new accounts that are created in, or added to, the organization are added as a member accounts of the organization’s Detective delegated administrator and Detective is enabled in that AWS Region.
  final pulumi.Input<bool> autoEnable;

  /// ARN of the behavior graph.
  final pulumi.Input<String> graphArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [OrganizationConfigurationArgs].
  /// [autoEnable] When this setting is enabled, all new accounts that are created in, or added to, the organization are added as a member accounts of the organization’s Detective delegated administrator and Detective is enabled in that AWS Region.
  /// [graphArn] ARN of the behavior graph.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  OrganizationConfigurationArgs({
    required bool autoEnable,
    required String graphArn,
    String? region,
  })  : autoEnable = pulumi.Input.asInput<bool>(autoEnable),
        graphArn = pulumi.Input.asInput<String>(graphArn),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoEnable'] = autoEnable;
    map['graphArn'] = graphArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory OrganizationConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationConfigurationArgs(
      autoEnable: map['autoEnable'] as bool,
      graphArn: map['graphArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
