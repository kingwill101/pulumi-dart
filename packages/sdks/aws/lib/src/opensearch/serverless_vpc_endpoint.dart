import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_vpc_endpoint_args.dart';
import 'serverless_vpc_endpoint_state.dart';
import 'serverless_vpc_endpoint_timeouts.dart';

/// Resource for managing an AWS OpenSearchServerless VPC Endpoint.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.opensearch.ServerlessVpcEndpoint("example", {
///     name: "myendpoint",
///     subnetIds: [exampleAwsSubnet.id],
///     vpcId: exampleAwsVpc.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.opensearch.ServerlessVpcEndpoint("example",
///     name="myendpoint",
///     subnet_ids=[example_aws_subnet["id"]],
///     vpc_id=example_aws_vpc["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.OpenSearch.ServerlessVpcEndpoint("example", new()
///     {
///         Name = "myendpoint",
///         SubnetIds = new[]
///         {
///             exampleAwsSubnet.Id,
///         },
///         VpcId = exampleAwsVpc.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := opensearch.NewServerlessVpcEndpoint(ctx, "example", &opensearch.ServerlessVpcEndpointArgs{
/// 			Name: pulumi.String("myendpoint"),
/// 			SubnetIds: pulumi.StringArray{
/// 				exampleAwsSubnet.Id,
/// 			},
/// 			VpcId: pulumi.Any(exampleAwsVpc.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.opensearch.ServerlessVpcEndpoint;
/// import com.pulumi.aws.opensearch.ServerlessVpcEndpointArgs;
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
///         var example = new ServerlessVpcEndpoint("example", ServerlessVpcEndpointArgs.builder()
///             .name("myendpoint")
///             .subnetIds(exampleAwsSubnet.id())
///             .vpcId(exampleAwsVpc.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:opensearch:ServerlessVpcEndpoint
///     properties:
///       name: myendpoint
///       subnetIds:
///         - ${exampleAwsSubnet.id}
///       vpcId: ${exampleAwsVpc.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearchServerless Vpc Endpointa using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/serverlessVpcEndpoint:ServerlessVpcEndpoint example vpce-8012925589
/// ```
class ServerlessVpcEndpoint extends pulumi.CustomResource {
  /// Name of the interface endpoint.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// One or more security groups that define the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint. Up to 5 security groups can be provided.
  late final pulumi.Output<List<String>> securityGroupIds;

  /// One or more subnet IDs from which you'll access OpenSearch Serverless. Up to 6 subnets can be provided.
  late final pulumi.Output<List<String>> subnetIds;
  late final pulumi.Output<ServerlessVpcEndpointTimeouts?> timeouts;

  /// ID of the VPC from which you'll access OpenSearch Serverless.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> vpcId;

  /// Creates a new [ServerlessVpcEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerlessVpcEndpoint]. {@macro pulumi_opensearch_serverless_vpc_endpoint_serverless_vpc_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerlessVpcEndpoint(
    String name, {
    ServerlessVpcEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:opensearch/serverlessVpcEndpoint:ServerlessVpcEndpoint',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    subnetIds = registerOutput<List<String>>('subnetIds');
    timeouts = registerOutput<ServerlessVpcEndpointTimeouts?>('timeouts');
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [ServerlessVpcEndpoint] resource's state with the given [name] and [id].
  static ServerlessVpcEndpoint get(
    String name,
    pulumi.Input<String> id, {
    ServerlessVpcEndpointState? state,
  }) {
    return ServerlessVpcEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServerlessVpcEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:opensearch/serverlessVpcEndpoint:ServerlessVpcEndpoint',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    subnetIds = registerOutput<List<String>>('subnetIds');
    timeouts = registerOutput<ServerlessVpcEndpointTimeouts?>('timeouts');
    vpcId = registerOutput<String>('vpcId');
  }
}
