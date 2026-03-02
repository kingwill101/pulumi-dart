// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_rule_destination_vpc_configuration.dart';

/// Input properties used for looking up and filtering TopicRuleDestination resources.
class TopicRuleDestinationState {
  /// The ARN of the topic rule destination
  final pulumi.Input<String>? arn;
  /// Whether or not to enable the destination. Default: `true`.
  final pulumi.Input<bool>? enabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration of the virtual private cloud (VPC) connection. For more info, see the [AWS documentation](https://docs.aws.amazon.com/iot/latest/developerguide/vpc-rule-action.html).
  final pulumi.Input<TopicRuleDestinationVpcConfiguration>? vpcConfiguration;

  /// Creates a new [TopicRuleDestinationState].
  /// [arn] The ARN of the topic rule destination
  /// [enabled] Whether or not to enable the destination. Default: `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vpcConfiguration] Configuration of the virtual private cloud (VPC) connection. For more info, see the [AWS documentation](https://docs.aws.amazon.com/iot/latest/developerguide/vpc-rule-action.html).
  TopicRuleDestinationState({
    this.arn,
    this.enabled,
    this.region,
    this.vpcConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'enabled': ?enabled,
      'region': ?region,
      'vpcConfiguration': ?pulumi.Input.mapOptionalInputValue<TopicRuleDestinationVpcConfiguration, Map<String, dynamic>>(vpcConfiguration, (value) => value.toMap()),
    };
  }

  factory TopicRuleDestinationState.fromMap(Map<String, dynamic> map) {
    return TopicRuleDestinationState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      vpcConfiguration: map['vpcConfiguration'] == null ? null : ((TopicRuleDestinationVpcConfiguration.fromMap((map['vpcConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

