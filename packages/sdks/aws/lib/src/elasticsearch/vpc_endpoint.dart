import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_endpoint_args.dart';
import 'vpc_endpoint_state.dart';
import 'vpc_endpoint_vpc_options.dart';

/// Manages an [AWS Elasticsearch VPC Endpoint](https://docs.aws.amazon.com/elasticsearch-service/latest/APIReference/API_CreateVpcEndpoint.html). Creates an Amazon elasticsearch Service-managed VPC endpoint.
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
/// const foo = new aws.elasticsearch.VpcEndpoint("foo", {
///     domainArn: domain1.arn,
///     vpcOptions: {
///         securityGroupIds: [
///             test.id,
///             test2.id,
///         ],
///         subnetIds: [
///             testAwsSubnet.id,
///             test2AwsSubnet.id,
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.elasticsearch.VpcEndpoint("foo",
///     domain_arn=domain1["arn"],
///     vpc_options={
///         "security_group_ids": [
///             test["id"],
///             test2["id"],
///         ],
///         "subnet_ids": [
///             test_aws_subnet["id"],
///             test2_aws_subnet["id"],
///         ],
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
///     var foo = new Aws.ElasticSearch.VpcEndpoint("foo", new()
///     {
///         DomainArn = domain1.Arn,
///         VpcOptions = new Aws.ElasticSearch.Inputs.VpcEndpointVpcOptionsArgs
///         {
///             SecurityGroupIds = new[]
///             {
///                 test.Id,
///                 test2.Id,
///             },
///             SubnetIds = new[]
///             {
///                 testAwsSubnet.Id,
///                 test2AwsSubnet.Id,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticsearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := elasticsearch.NewVpcEndpoint(ctx, "foo", &elasticsearch.VpcEndpointArgs{
/// 			DomainArn: pulumi.Any(domain1.Arn),
/// 			VpcOptions: &elasticsearch.VpcEndpointVpcOptionsArgs{
/// 				SecurityGroupIds: pulumi.StringArray{
/// 					test.Id,
/// 					test2.Id,
/// 				},
/// 				SubnetIds: pulumi.StringArray{
/// 					testAwsSubnet.Id,
/// 					test2AwsSubnet.Id,
/// 				},
/// 			},
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
/// import com.pulumi.aws.elasticsearch.VpcEndpoint;
/// import com.pulumi.aws.elasticsearch.VpcEndpointArgs;
/// import com.pulumi.aws.elasticsearch.inputs.VpcEndpointVpcOptionsArgs;
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
///         var foo = new VpcEndpoint("foo", VpcEndpointArgs.builder()
///             .domainArn(domain1.arn())
///             .vpcOptions(VpcEndpointVpcOptionsArgs.builder()
///                 .securityGroupIds(
///                     test.id(),
///                     test2.id())
///                 .subnetIds(
///                     testAwsSubnet.id(),
///                     test2AwsSubnet.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:elasticsearch:VpcEndpoint
///     properties:
///       domainArn: ${domain1.arn}
///       vpcOptions:
///         securityGroupIds:
///           - ${test.id}
///           - ${test2.id}
///         subnetIds:
///           - ${testAwsSubnet.id}
///           - ${test2AwsSubnet.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import elasticsearch VPC endpoint connections using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticsearch/vpcEndpoint:VpcEndpoint example endpoint-id
/// ```
class VpcEndpoint extends pulumi.CustomResource {
  /// Specifies the Amazon Resource Name (ARN) of the domain to create the endpoint for
  late final pulumi.Output<String> domainArn;

  /// The connection endpoint ID for connecting to the domain.
  late final pulumi.Output<String> endpoint;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Options to specify the subnets and security groups for the endpoint.
  late final pulumi.Output<VpcEndpointVpcOptions> vpcOptions;

  /// Creates a new [VpcEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcEndpoint]. {@macro pulumi_elasticsearch_vpc_endpoint_vpc_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcEndpoint(
    String name, {
    VpcEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:elasticsearch/vpcEndpoint:VpcEndpoint',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    domainArn = registerOutput<String>('domainArn');
    endpoint = registerOutput<String>('endpoint');
    region = registerOutput<String>('region');
    vpcOptions = registerOutput<VpcEndpointVpcOptions>(
      'vpcOptions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VpcEndpointVpcOptions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }

  /// Gets an existing [VpcEndpoint] resource's state with the given [name] and [id].
  static VpcEndpoint get(
    String name,
    pulumi.Input<String> id, {
    VpcEndpointState? state,
  }) {
    return VpcEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpcEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:elasticsearch/vpcEndpoint:VpcEndpoint',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    domainArn = registerOutput<String>('domainArn');
    endpoint = registerOutput<String>('endpoint');
    region = registerOutput<String>('region');
    vpcOptions = registerOutput<VpcEndpointVpcOptions>(
      'vpcOptions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return VpcEndpointVpcOptions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
