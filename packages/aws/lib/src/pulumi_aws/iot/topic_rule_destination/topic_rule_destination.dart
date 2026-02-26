import 'package:pulumi/pulumi.dart';
import '../topic_rule_destination_vpc_configuration/topic_rule_destination_vpc_configuration.dart';
import 'topic_rule_destination_args.dart';

/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iot.TopicRuleDestination("example", {vpcConfiguration: {
/// roleArn: exampleAwsIamRole.arn,
/// securityGroups: [exampleAwsSecurityGroup.id],
/// subnetIds: exampleAwsSubnet.map(__item => __item.id),
/// vpcId: exampleAwsVpc.id,
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iot.TopicRuleDestination("example", vpc_configuration={
/// "role_arn": example_aws_iam_role["arn"],
/// "security_groups": [example_aws_security_group["id"]],
/// "subnet_ids": [__item["id"] for __item in example_aws_subnet],
/// "vpc_id": example_aws_vpc["id"],
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
/// var example = new Aws.Iot.TopicRuleDestination("example", new()
/// {
/// VpcConfiguration = new Aws.Iot.Inputs.TopicRuleDestinationVpcConfigurationArgs
/// {
/// RoleArn = exampleAwsIamRole.Arn,
/// SecurityGroups = new[]
/// {
/// exampleAwsSecurityGroup.Id,
/// },
/// SubnetIds = exampleAwsSubnet.Select(__item => __item.Id).ToList(),
/// VpcId = exampleAwsVpc.Id,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new TopicRuleDestination("example", TopicRuleDestinationArgs.builder()
/// .vpcConfiguration(TopicRuleDestinationVpcConfigurationArgs.builder()
/// .roleArn(exampleAwsIamRole.arn())
/// .securityGroups(exampleAwsSecurityGroup.id())
/// .subnetIds(exampleAwsSubnet.stream().map(element -> element.id()).collect(toList()))
/// .vpcId(exampleAwsVpc.id())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import IoT topic rule destinations using the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:iot/topicRuleDestination:TopicRuleDestination example arn:aws:iot:us-west-2:123456789012:ruledestination/vpc/2ce781c8-68a6-4c52-9c62-63fe489ecc60
/// ```
class TopicRuleDestination extends CustomResource {
  /// The ARN of the topic rule destination
  late final Output<String> arn;

  /// Whether or not to enable the destination. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
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
