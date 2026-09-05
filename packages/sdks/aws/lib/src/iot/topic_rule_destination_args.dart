// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_rule_destination_vpc_configuration.dart';

/// {@template pulumi_iot_topic_rule_destination_topic_rule_destination_args_doc}
/// The set of arguments for TopicRuleDestination.
/// {@endtemplate}
/// {@macro pulumi_iot_topic_rule_destination_topic_rule_destination_args_doc}
class TopicRuleDestinationArgs {
  /// Whether or not to enable the destination. Default: `true`.
  final pulumi.Input<bool?>? enabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Configuration of the VPC connection. For more info, see the [AWS documentation](https://docs.aws.amazon.com/iot/latest/developerguide/vpc-rule-action.html).
  final pulumi.Input<TopicRuleDestinationVpcConfiguration> vpcConfiguration;

  /// Creates a new [TopicRuleDestinationArgs].
  /// [enabled] Whether or not to enable the destination. Default: `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcConfiguration] Configuration of the VPC connection. For more info, see the [AWS documentation](https://docs.aws.amazon.com/iot/latest/developerguide/vpc-rule-action.html).
  const TopicRuleDestinationArgs({
    this.enabled,
    this.region,
    required this.vpcConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'region': ?region,
      'vpcConfiguration': pulumi.Input.mapInputValue<TopicRuleDestinationVpcConfiguration, Map<String, dynamic>>(vpcConfiguration, (value) => value.toMap()),
    };
  }

  factory TopicRuleDestinationArgs.fromMap(Map<String, dynamic> map) {
    return TopicRuleDestinationArgs(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcConfiguration: pulumi.Input.fromValue(TopicRuleDestinationVpcConfiguration.fromMap((map['vpcConfiguration']! as Map).cast<String, dynamic>())),
    );
  }
}
