import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_cluster_args.dart';
import 'serverless_cluster_client_authentication.dart';
import 'serverless_cluster_state.dart';

/// Manages an Amazon MSK Serverless cluster.
///
/// &gt; **Note:** To manage a _provisioned_ Amazon MSK cluster, use the `aws.msk.Cluster` resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.msk.ServerlessCluster("example", {
///     clusterName: "Example",
///     vpcConfigs: [{
///         subnetIds: exampleAwsSubnet.map(__item => __item.id),
///         securityGroupIds: [exampleAwsSecurityGroup.id],
///     }],
///     clientAuthentication: {
///         sasl: {
///             iam: {
///                 enabled: true,
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.msk.ServerlessCluster("example",
///     cluster_name="Example",
///     vpc_configs=[{
///         "subnet_ids": [__item["id"] for __item in example_aws_subnet],
///         "security_group_ids": [example_aws_security_group["id"]],
///     }],
///     client_authentication={
///         "sasl": {
///             "iam": {
///                 "enabled": True,
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Msk.ServerlessCluster("example", new()
///     {
///         ClusterName = "Example",
///         VpcConfigs = new[]
///         {
///             new Aws.Msk.Inputs.ServerlessClusterVpcConfigArgs
///             {
///                 SubnetIds = exampleAwsSubnet.Select(__item => __item.Id).ToList(),
///                 SecurityGroupIds = new[]
///                 {
///                     exampleAwsSecurityGroup.Id,
///                 },
///             },
///         },
///         ClientAuthentication = new Aws.Msk.Inputs.ServerlessClusterClientAuthenticationArgs
///         {
///             Sasl = new Aws.Msk.Inputs.ServerlessClusterClientAuthenticationSaslArgs
///             {
///                 Iam = new Aws.Msk.Inputs.ServerlessClusterClientAuthenticationSaslIamArgs
///                 {
///                     Enabled = true,
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/msk"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new ServerlessCluster("example", ServerlessClusterArgs.builder()
///             .clusterName("Example")
///             .vpcConfigs(ServerlessClusterVpcConfigArgs.builder()
///                 .subnetIds(exampleAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///                 .securityGroupIds(exampleAwsSecurityGroup.id())
///                 .build())
///             .clientAuthentication(ServerlessClusterClientAuthenticationArgs.builder()
///                 .sasl(ServerlessClusterClientAuthenticationSaslArgs.builder()
///                     .iam(ServerlessClusterClientAuthenticationSaslIamArgs.builder()
///                         .enabled(true)
///                         .build())
///                     .build())
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
/// Using `pulumi import`, import MSK serverless clusters using the cluster `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:msk/serverlessCluster:ServerlessCluster example arn:aws:kafka:us-west-2:123456789012:cluster/example/279c0212-d057-4dba-9aa9-1c4e5a25bfc7-3
/// ```
class ServerlessCluster extends pulumi.CustomResource {
  /// The ARN of the serverless cluster.
  late final pulumi.Output<String> arn;
  /// One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, `boot-abcdefg.c2.kafka-serverless.eu-central-1.amazonaws.com:9098`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  late final pulumi.Output<String> bootstrapBrokersSaslIam;
  /// Specifies client authentication information for the serverless cluster. See below.
  late final pulumi.Output<ServerlessClusterClientAuthentication> clientAuthentication;
  /// The name of the serverless cluster.
  late final pulumi.Output<String> clusterName;
  /// UUID of the serverless cluster, for use in IAM policies.
  late final pulumi.Output<String> clusterUuid;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// VPC configuration information. See below.
  late final pulumi.Output<List<Map<String, dynamic>>> vpcConfigs;

  /// Creates a new [ServerlessCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerlessCluster]. {@macro pulumi_msk_serverless_cluster_serverless_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerlessCluster(
    String name, {
    ServerlessClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:msk/serverlessCluster:ServerlessCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    bootstrapBrokersSaslIam = registerOutput<String>('bootstrapBrokersSaslIam');
    clientAuthentication = registerOutput<ServerlessClusterClientAuthentication>('clientAuthentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerlessClusterClientAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterName = registerOutput<String>('clusterName');
    clusterUuid = registerOutput<String>('clusterUuid');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcConfigs = registerOutput<List<Map<String, dynamic>>>('vpcConfigs');
  }

  /// Gets an existing [ServerlessCluster] resource's state with the given [name] and [id].
  static ServerlessCluster get(
    String name,
    pulumi.Input<String> id, {
    ServerlessClusterState? state,
  }) {
    return ServerlessCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServerlessCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:msk/serverlessCluster:ServerlessCluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    bootstrapBrokersSaslIam = registerOutput<String>('bootstrapBrokersSaslIam');
    clientAuthentication = registerOutput<ServerlessClusterClientAuthentication>('clientAuthentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerlessClusterClientAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterName = registerOutput<String>('clusterName');
    clusterUuid = registerOutput<String>('clusterUuid');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcConfigs = registerOutput<List<Map<String, dynamic>>>('vpcConfigs');
  }
}
