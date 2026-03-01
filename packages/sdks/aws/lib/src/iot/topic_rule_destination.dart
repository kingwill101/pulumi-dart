import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_rule_destination_args.dart';
import 'topic_rule_destination_state.dart';
import 'topic_rule_destination_vpc_configuration.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iot.TopicRuleDestination("example", {vpcConfiguration: {
///     roleArn: exampleAwsIamRole.arn,
///     securityGroups: [exampleAwsSecurityGroup.id],
///     subnetIds: exampleAwsSubnet.map(__item => __item.id),
///     vpcId: exampleAwsVpc.id,
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iot.TopicRuleDestination("example", vpc_configuration={
///     "role_arn": example_aws_iam_role["arn"],
///     "security_groups": [example_aws_security_group["id"]],
///     "subnet_ids": [__item["id"] for __item in example_aws_subnet],
///     "vpc_id": example_aws_vpc["id"],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Iot.TopicRuleDestination("example", new()
///     {
///         VpcConfiguration = new Aws.Iot.Inputs.TopicRuleDestinationVpcConfigurationArgs
///         {
///             RoleArn = exampleAwsIamRole.Arn,
///             SecurityGroups = new[]
///             {
///                 exampleAwsSecurityGroup.Id,
///             },
///             SubnetIds = exampleAwsSubnet.Select(__item => __item.Id).ToList(),
///             VpcId = exampleAwsVpc.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iot.NewTopicRuleDestination(ctx, "example", &iot.TopicRuleDestinationArgs{
/// VpcConfiguration: &iot.TopicRuleDestinationVpcConfigurationArgs{
/// RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// SecurityGroups: pulumi.StringArray{
/// exampleAwsSecurityGroup.Id,
/// },
/// SubnetIds: []pulumi.String(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:4,22-44)),
/// VpcId: pulumi.Any(exampleAwsVpc.Id),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iot.TopicRuleDestination;
/// import com.pulumi.aws.iot.TopicRuleDestinationArgs;
/// import com.pulumi.aws.iot.inputs.TopicRuleDestinationVpcConfigurationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new TopicRuleDestination("example", TopicRuleDestinationArgs.builder()
///             .vpcConfiguration(TopicRuleDestinationVpcConfigurationArgs.builder()
///                 .roleArn(exampleAwsIamRole.arn())
///                 .securityGroups(exampleAwsSecurityGroup.id())
///                 .subnetIds(exampleAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///                 .vpcId(exampleAwsVpc.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import IoT topic rule destinations using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:iot/topicRuleDestination:TopicRuleDestination example arn:aws:iot:us-west-2:123456789012:ruledestination/vpc/2ce781c8-68a6-4c52-9c62-63fe489ecc60
/// ```
class TopicRuleDestination extends pulumi.CustomResource {
  /// The ARN of the topic rule destination
  late final pulumi.Output<String> arn;
  /// Whether or not to enable the destination. Default: `true`.
  late final pulumi.Output<bool?> enabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration of the virtual private cloud (VPC) connection. For more info, see the [AWS documentation](https://docs.aws.amazon.com/iot/latest/developerguide/vpc-rule-action.html).
  late final pulumi.Output<TopicRuleDestinationVpcConfiguration> vpcConfiguration;

  /// Creates a new [TopicRuleDestination].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TopicRuleDestination]. {@macro pulumi_iot_topic_rule_destination_topic_rule_destination_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TopicRuleDestination(
    String name, {
    TopicRuleDestinationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/topicRuleDestination:TopicRuleDestination',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.enabled = registerOutput<bool?>('enabled');
    this.region = registerOutput<String>('region');
    this.vpcConfiguration = registerOutput<TopicRuleDestinationVpcConfiguration>('vpcConfiguration');
  }

  /// Gets an existing [TopicRuleDestination] resource's state with the given [name] and [id].
  static TopicRuleDestination get(
    String name,
    pulumi.Input<String> id, {
    TopicRuleDestinationState? state,
  }) {
    return TopicRuleDestination._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TopicRuleDestination._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/topicRuleDestination:TopicRuleDestination',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.enabled = registerOutput<bool?>('enabled');
    this.region = registerOutput<String>('region');
    this.vpcConfiguration = registerOutput<TopicRuleDestinationVpcConfiguration>('vpcConfiguration');
  }
}
