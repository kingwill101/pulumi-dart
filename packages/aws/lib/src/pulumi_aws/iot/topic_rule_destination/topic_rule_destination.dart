import 'package:pulumi/pulumi.dart';
import '../topic_rule_destination_vpc_configuration/topic_rule_destination_vpc_configuration.dart';
import 'topic_rule_destination_args.dart';

/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IoT topic rule destinations using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:iot/topicRuleDestination:TopicRuleDestination example arn:aws:iot:us-west-2:123456789012:ruledestination/vpc/2ce781c8-68a6-4c52-9c62-63fe489ecc60
/// ```
class TopicRuleDestination extends CustomResource {
  /// The ARN of the topic rule destination
  late final Output<String> arn;

  /// Whether or not to enable the destination. Default: `true`.
  late final Output<bool?> enabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration of the virtual private cloud (VPC) connection. For more info, see the [AWS documentation](https://docs.aws.amazon.com/iot/latest/developerguide/vpc-rule-action.html).
  late final Output<TopicRuleDestinationVpcConfiguration> vpcConfiguration;

  TopicRuleDestination(
    String name, {
    TopicRuleDestinationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iot/topicRuleDestination:TopicRuleDestination',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.enabled = registerOutput<bool?>('enabled');
    this.region = registerOutput<String>('region');
    this.vpcConfiguration =
        registerOutput<TopicRuleDestinationVpcConfiguration>(
            'vpcConfiguration');
  }
}
