import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_private_dns_args.dart';
import 'endpoint_private_dns_state.dart';

/// Resource for enabling private DNS on an AWS VPC (Virtual Private Cloud) Endpoint.
///
/// &gt; When using this resource, the `private_dns_enabled` argument should be omitted on the parent `aws.ec2.VpcEndpoint` resource.
/// Setting the value both places can lead to unintended behavior and persistent differences.
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
/// const example = new aws.vpc.EndpointPrivateDns("example", {
///     vpcEndpointId: exampleAwsVpcEndpoint.id,
///     privateDnsEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpc.EndpointPrivateDns("example",
///     vpc_endpoint_id=example_aws_vpc_endpoint["id"],
///     private_dns_enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Vpc.EndpointPrivateDns("example", new()
///     {
///         VpcEndpointId = exampleAwsVpcEndpoint.Id,
///         PrivateDnsEnabled = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpc.NewEndpointPrivateDns(ctx, "example", &vpc.EndpointPrivateDnsArgs{
/// 			VpcEndpointId:     pulumi.Any(exampleAwsVpcEndpoint.Id),
/// 			PrivateDnsEnabled: pulumi.Bool(true),
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
/// import com.pulumi.aws.vpc.EndpointPrivateDns;
/// import com.pulumi.aws.vpc.EndpointPrivateDnsArgs;
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
///         var example = new EndpointPrivateDns("example", EndpointPrivateDnsArgs.builder()
///             .vpcEndpointId(exampleAwsVpcEndpoint.id())
///             .privateDnsEnabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpc:EndpointPrivateDns
///     properties:
///       vpcEndpointId: ${exampleAwsVpcEndpoint.id}
///       privateDnsEnabled: true
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import a VPC (Virtual Private Cloud) Endpoint Private DNS using the `vpc_endpoint_id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpc/endpointPrivateDns:EndpointPrivateDns example vpce-abcd-1234
/// ```
class EndpointPrivateDns extends pulumi.CustomResource {
  /// Indicates whether a private hosted zone is associated with the VPC. Only applicable for `Interface` endpoints.
  late final pulumi.Output<bool> privateDnsEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// VPC endpoint identifier.
  late final pulumi.Output<String> vpcEndpointId;

  /// Creates a new [EndpointPrivateDns].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointPrivateDns]. {@macro pulumi_vpc_endpoint_private_dns_endpoint_private_dns_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointPrivateDns(
    String name, {
    EndpointPrivateDnsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:vpc/endpointPrivateDns:EndpointPrivateDns',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    privateDnsEnabled = registerOutput<bool>('privateDnsEnabled');
    region = registerOutput<String>('region');
    vpcEndpointId = registerOutput<String>('vpcEndpointId');
  }

  /// Gets an existing [EndpointPrivateDns] resource's state with the given [name] and [id].
  static EndpointPrivateDns get(
    String name,
    pulumi.Input<String> id, {
    EndpointPrivateDnsState? state,
  }) {
    return EndpointPrivateDns._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EndpointPrivateDns._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:vpc/endpointPrivateDns:EndpointPrivateDns',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    privateDnsEnabled = registerOutput<bool>('privateDnsEnabled');
    region = registerOutput<String>('region');
    vpcEndpointId = registerOutput<String>('vpcEndpointId');
  }
}
