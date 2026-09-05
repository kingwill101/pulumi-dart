import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_cluster_args.dart';
import 'serverless_cluster_client_authentication.dart';
import 'serverless_cluster_state.dart';
import 'serverless_cluster_vpc_config.dart';

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
///     clientAuthentication: {
///         sasl: {
///             iam: {
///                 enabled: true,
///             },
///         },
///     },
///     vpcConfigs: [{
///         subnetIds: exampleAwsSubnet.map(__item => __item.id),
///         securityGroupIds: [exampleAwsSecurityGroup.id],
///     }],
///     clusterName: "Example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.msk.ServerlessCluster("example",
///     client_authentication={
///         "sasl": {
///             "iam": {
///                 "enabled": True,
///             },
///         },
///     },
///     vpc_configs=[{
///         "subnet_ids": [__item["id"] for __item in example_aws_subnet],
///         "security_group_ids": [example_aws_security_group["id"]],
///     }],
///     cluster_name="Example")
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
///         ClusterName = "Example",
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
/// ClientAuthentication: &msk.ServerlessClusterClientAuthenticationArgs{
/// Sasl: &msk.ServerlessClusterClientAuthenticationSaslArgs{
/// Iam: &msk.ServerlessClusterClientAuthenticationSaslIamArgs{
/// Enabled: pulumi.Bool(true),
/// },
/// },
/// },
/// VpcConfigs: msk.ServerlessClusterVpcConfigArray{
/// &msk.ServerlessClusterVpcConfigArgs{
/// SubnetIds: pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:9,24-46)),
/// SecurityGroupIds: pulumi.StringArray{
/// exampleAwsSecurityGroup.Id,
/// },
/// },
/// },
/// ClusterName: pulumi.String("Example"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_msk_serverlesscluster" "example" {
///   client_authentication = {
///     sasl = {
///       iam = {
///         enabled = true
///       }
///     }
///   }
///   vpc_configs {
///     subnet_ids         = exampleAwsSubnet[*].id
///     security_group_ids = [exampleAwsSecurityGroup.id]
///   }
///   cluster_name = "Example"
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
/// import com.pulumi.aws.msk.inputs.ServerlessClusterClientAuthenticationArgs;
/// import com.pulumi.aws.msk.inputs.ServerlessClusterClientAuthenticationSaslArgs;
/// import com.pulumi.aws.msk.inputs.ServerlessClusterClientAuthenticationSaslIamArgs;
/// import com.pulumi.aws.msk.inputs.ServerlessClusterVpcConfigArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .clientAuthentication(ServerlessClusterClientAuthenticationArgs.builder()
///                 .sasl(ServerlessClusterClientAuthenticationSaslArgs.builder()
///                     .iam(ServerlessClusterClientAuthenticationSaslIamArgs.builder()
///                         .enabled(true)
///                         .build())
///                     .build())
///                 .build())
///             .vpcConfigs(ServerlessClusterVpcConfigArgs.builder()
///                 .subnetIds(exampleAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///                 .securityGroupIds(exampleAwsSecurityGroup.id())
///                 .build())
///             .clusterName("Example")
///             .build());
///
///     }
/// }
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the MSK serverless cluster.
///
///
/// Using `pulumi import`, import MSK serverless cluster using the cluster ARN. For example:
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
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// VPC configuration information. See below.
  late final pulumi.Output<List<ServerlessClusterVpcConfig>> vpcConfigs;

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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    bootstrapBrokersSaslIam = registerOutput<String>('bootstrapBrokersSaslIam');
    clientAuthentication = registerOutput<ServerlessClusterClientAuthentication>('clientAuthentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerlessClusterClientAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterName = registerOutput<String>('clusterName');
    clusterUuid = registerOutput<String>('clusterUuid');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcConfigs = registerOutput<List<ServerlessClusterVpcConfig>>('vpcConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServerlessClusterVpcConfig>(guardedValue, (value) => ServerlessClusterVpcConfig.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [ServerlessCluster] resource's state with the given [name] and [id].
  static ServerlessCluster get(
    String name,
    pulumi.Input<String> id, {
    ServerlessClusterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ServerlessCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcConfigs = registerOutput<List<ServerlessClusterVpcConfig>>('vpcConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServerlessClusterVpcConfig>(guardedValue, (value) => ServerlessClusterVpcConfig.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [ServerlessCluster] resource.
  ServerlessCluster.reference(String urn)
    : super(
        'aws:msk/serverlessCluster:ServerlessCluster',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    bootstrapBrokersSaslIam = registerOutput<String>('bootstrapBrokersSaslIam');
    clientAuthentication = registerOutput<ServerlessClusterClientAuthentication>('clientAuthentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerlessClusterClientAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterName = registerOutput<String>('clusterName');
    clusterUuid = registerOutput<String>('clusterUuid');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcConfigs = registerOutput<List<ServerlessClusterVpcConfig>>('vpcConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServerlessClusterVpcConfig>(guardedValue, (value) => ServerlessClusterVpcConfig.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
