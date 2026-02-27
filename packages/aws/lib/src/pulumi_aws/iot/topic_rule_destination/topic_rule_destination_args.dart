// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../topic_rule_destination_vpc_configuration/topic_rule_destination_vpc_configuration.dart';

/// The set of arguments for TopicRuleDestination.
class TopicRuleDestinationArgs {
  /// Whether or not to enable the destination. Default: `true`.
  final Input<bool>? enabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configuration of the virtual private cloud (VPC) connection. For more info, see the [AWS documentation](https://docs.aws.amazon.com/iot/latest/developerguide/vpc-rule-action.html).
  final Input<TopicRuleDestinationVpcConfiguration> vpcConfiguration;

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
    map['vpcConfiguration'] = Input.mapInputValue<
        TopicRuleDestinationVpcConfiguration,
        Map<String, dynamic>>(vpcConfiguration, (value) => value.toMap());
    return map;
  }

  factory TopicRuleDestinationArgs.fromMap(Map<String, dynamic> map) {
    return TopicRuleDestinationArgs(
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      region: Input.asOptionalInput<String>(map['region']),
      vpcConfiguration: Input.asInput<TopicRuleDestinationVpcConfiguration>(
          map['vpcConfiguration']),
    );
  }
}
