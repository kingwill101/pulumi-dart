// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for OrganizationConfiguration.
class OrganizationConfigurationArgs {
  /// When this setting is enabled, all new accounts that are created in, or added to, the organization are added as a member accounts of the organization’s Detective delegated administrator and Detective is enabled in that AWS Region.
  final pulumi.Input<bool> autoEnable;

  /// ARN of the behavior graph.
  final pulumi.Input<String> graphArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  OrganizationConfigurationArgs({
    required this.autoEnable,
    required this.graphArn,
    this.region,
  });

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
      autoEnable: pulumi.Input.asInput<bool>(map['autoEnable']),
      graphArn: pulumi.Input.asInput<String>(map['graphArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
