// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../topic_rule_destination_vpc_configuration/topic_rule_destination_vpc_configuration.dart';

/// The set of arguments for TopicRuleDestination.
class TopicRuleDestinationArgs {
  /// Whether or not to enable the destination. Default: `true`.
  final pulumi.Input<bool>? enabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration of the virtual private cloud (VPC) connection. For more info, see the [AWS documentation](https://docs.aws.amazon.com/iot/latest/developerguide/vpc-rule-action.html).
  final pulumi.Input<TopicRuleDestinationVpcConfiguration> vpcConfiguration;

  TopicRuleDestinationArgs({
    this.enabled,
    this.region,
    required this.vpcConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['vpcConfiguration'] = pulumi.Input.mapInputValue<
        TopicRuleDestinationVpcConfiguration,
        Map<String, dynamic>>(vpcConfiguration, (value) => value.toMap());
    return map;
  }

  factory TopicRuleDestinationArgs.fromMap(Map<String, dynamic> map) {
    return TopicRuleDestinationArgs(
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      vpcConfiguration:
          pulumi.Input.asInput<TopicRuleDestinationVpcConfiguration>(
              map['vpcConfiguration']),
    );
  }
}
