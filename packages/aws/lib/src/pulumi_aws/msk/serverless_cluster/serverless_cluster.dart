import 'package:pulumi/pulumi.dart';
import '../serverless_cluster_client_authentication/serverless_cluster_client_authentication.dart';
import '../serverless_cluster_vpc_config/serverless_cluster_vpc_config.dart';
import 'serverless_cluster_args.dart';

/// Manages an Amazon MSK Serverless cluster.
///
/// > **Note:** To manage a _provisioned_ Amazon MSK cluster, use the <span pulumi-lang-nodejs="`aws.msk.Cluster`" pulumi-lang-dotnet="`aws.msk.Cluster`" pulumi-lang-go="`msk.Cluster`" pulumi-lang-python="`msk.Cluster`" pulumi-lang-yaml="`aws.msk.Cluster`" pulumi-lang-java="`aws.msk.Cluster`">`aws.msk.Cluster`</span> resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.msk.ServerlessCluster("example", {
/// clusterName: "Example",
/// vpcConfigs: [{
/// subnetIds: exampleAwsSubnet.map(__item => __item.id),
/// securityGroupIds: [exampleAwsSecurityGroup.id],
/// }],
/// clientAuthentication: {
/// sasl: {
/// iam: {
/// enabled: true,
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.msk.ServerlessCluster("example",
/// cluster_name="Example",
/// vpc_configs=[{
/// "subnet_ids": [__item["id"] for __item in example_aws_subnet],
/// "security_group_ids": [example_aws_security_group["id"]],
/// }],
/// client_authentication={
/// "sasl": {
/// "iam": {
/// "enabled": True,
/// },
/// },
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
/// var example = new Aws.Msk.ServerlessCluster("example", new()
/// {
/// ClusterName = "Example",
/// VpcConfigs = new[]
/// {
/// new Aws.Msk.Inputs.ServerlessClusterVpcConfigArgs
/// {
/// SubnetIds = exampleAwsSubnet.Select(__item => __item.Id).ToList(),
/// SecurityGroupIds = new[]
/// {
/// exampleAwsSecurityGroup.Id,
/// },
/// },
/// },
/// ClientAuthentication = new Aws.Msk.Inputs.ServerlessClusterClientAuthenticationArgs
/// {
/// Sasl = new Aws.Msk.Inputs.ServerlessClusterClientAuthenticationSaslArgs
/// {
/// Iam = new Aws.Msk.Inputs.ServerlessClusterClientAuthenticationSaslIamArgs
/// {
/// Enabled = true,
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/msk"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := msk.NewServerlessCluster(ctx, "example", &msk.ServerlessClusterArgs{
/// ClusterName: pulumi.String("Example"),
/// VpcConfigs: msk.ServerlessClusterVpcConfigArray{
/// &msk.ServerlessClusterVpcConfigArgs{
/// SubnetIds: []pulumi.String(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:3,24-46)),
/// SecurityGroupIds: pulumi.StringArray{
/// exampleAwsSecurityGroup.Id,
/// },
/// },
/// },
/// ClientAuthentication: &msk.ServerlessClusterClientAuthenticationArgs{
/// Sasl: &msk.ServerlessClusterClientAuthenticationSaslArgs{
/// Iam: &msk.ServerlessClusterClientAuthenticationSaslIamArgs{
/// Enabled: pulumi.Bool(true),
/// },
/// },
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
/// import com.pulumi.aws.msk.ServerlessCluster;
/// import com.pulumi.aws.msk.ServerlessClusterArgs;
/// import com.pulumi.aws.msk.inputs.ServerlessClusterVpcConfigArgs;
/// import com.pulumi.aws.msk.inputs.ServerlessClusterClientAuthenticationArgs;
/// import com.pulumi.aws.msk.inputs.ServerlessClusterClientAuthenticationSaslArgs;
/// import com.pulumi.aws.msk.inputs.ServerlessClusterClientAuthenticationSaslIamArgs;
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
/// var example = new ServerlessCluster("example", ServerlessClusterArgs.builder()
/// .clusterName("Example")
/// .vpcConfigs(ServerlessClusterVpcConfigArgs.builder()
/// .subnetIds(exampleAwsSubnet.stream().map(element -> element.id()).collect(toList()))
/// .securityGroupIds(exampleAwsSecurityGroup.id())
/// .build())
/// .clientAuthentication(ServerlessClusterClientAuthenticationArgs.builder()
/// .sasl(ServerlessClusterClientAuthenticationSaslArgs.builder()
/// .iam(ServerlessClusterClientAuthenticationSaslIamArgs.builder()
/// .enabled(true)
/// .build())
/// .build())
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
/// Using `pulumi import`, import MSK serverless clusters using the cluster <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:msk/serverlessCluster:ServerlessCluster example arn:aws:kafka:us-west-2:123456789012:cluster/example/279c0212-d057-4dba-9aa9-1c4e5a25bfc7-3
/// ```
class ServerlessCluster extends CustomResource {
  /// The ARN of the serverless cluster.
  late final Output<String> arn;

  /// One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, `boot-abcdefg.c2.kafka-serverless.eu-central-1.amazonaws.com:9098`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  late final Output<String> bootstrapBrokersSaslIam;

  /// Specifies client authentication information for the serverless cluster. See below.
  late final Output<ServerlessClusterClientAuthentication> clientAuthentication;

  /// The name of the serverless cluster.
  late final Output<String> clusterName;

  /// UUID of the serverless cluster, for use in IAM policies.
  late final Output<String> clusterUuid;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// VPC configuration information. See below.
  late final Output<List<ServerlessClusterVpcConfig>> vpcConfigs;

  ServerlessCluster(
    String name, {
    ServerlessClusterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:msk/serverlessCluster:ServerlessCluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.bootstrapBrokersSaslIam = Output.createUnknown<String>();
    this.clientAuthentication =
        Output.createUnknown<ServerlessClusterClientAuthentication>();
    this.clusterName = Output.createUnknown<String>();
    this.clusterUuid = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.vpcConfigs = Output.createUnknown<List<ServerlessClusterVpcConfig>>();
  }
}
