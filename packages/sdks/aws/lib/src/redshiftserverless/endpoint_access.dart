import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_access_args.dart';
import 'endpoint_access_state.dart';

/// Creates a new Amazon Redshift Serverless Endpoint Access.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshiftserverless.EndpointAccess("example", {
///     endpointName: "example",
///     workgroupName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshiftserverless.EndpointAccess("example",
///     endpoint_name="example",
///     workgroup_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.RedshiftServerless.EndpointAccess("example", new()
///     {
///         EndpointName = "example",
///         WorkgroupName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshiftserverless"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redshiftserverless.NewEndpointAccess(ctx, "example", &redshiftserverless.EndpointAccessArgs{
/// 			EndpointName:  pulumi.String("example"),
/// 			WorkgroupName: pulumi.String("example"),
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
/// import com.pulumi.aws.redshiftserverless.EndpointAccess;
/// import com.pulumi.aws.redshiftserverless.EndpointAccessArgs;
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
///         var example = new EndpointAccess("example", EndpointAccessArgs.builder()
///             .endpointName("example")
///             .workgroupName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:redshiftserverless:EndpointAccess
///     properties:
///       endpointName: example
///       workgroupName: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Serverless Endpoint Access using the `endpoint_name`. For example:
///
/// ```sh
/// $ pulumi import aws:redshiftserverless/endpointAccess:EndpointAccess example example
/// ```
class EndpointAccess extends pulumi.CustomResource {
  /// The DNS address of the VPC endpoint.
  late final pulumi.Output<String> address;
  /// Amazon Resource Name (ARN) of the Redshift Serverless Endpoint Access.
  late final pulumi.Output<String> arn;
  /// The name of the endpoint.
  late final pulumi.Output<String> endpointName;
  /// The owner Amazon Web Services account for the Amazon Redshift Serverless workgroup.
  late final pulumi.Output<String?> ownerAccount;
  /// The port that Amazon Redshift Serverless listens on.
  late final pulumi.Output<int> port;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// An array of VPC subnet IDs to associate with the endpoint.
  late final pulumi.Output<List<String>> subnetIds;
  /// The VPC endpoint or the Redshift Serverless workgroup. See `VPC Endpoint` below.
  late final pulumi.Output<List<Map<String, dynamic>>> vpcEndpoints;
  /// An array of security group IDs to associate with the workgroup.
  late final pulumi.Output<List<String>> vpcSecurityGroupIds;
  /// The name of the workgroup.
  late final pulumi.Output<String> workgroupName;

  /// Creates a new [EndpointAccess].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointAccess]. {@macro pulumi_redshiftserverless_endpoint_access_endpoint_access_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointAccess(
    String name, {
    EndpointAccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshiftserverless/endpointAccess:EndpointAccess',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    address = registerOutput<String>('address');
    arn = registerOutput<String>('arn');
    endpointName = registerOutput<String>('endpointName');
    ownerAccount = registerOutput<String?>('ownerAccount');
    port = registerOutput<int>('port');
    region = registerOutput<String>('region');
    subnetIds = registerOutput<List<String>>('subnetIds');
    vpcEndpoints = registerOutput<List<Map<String, dynamic>>>('vpcEndpoints');
    vpcSecurityGroupIds = registerOutput<List<String>>('vpcSecurityGroupIds');
    workgroupName = registerOutput<String>('workgroupName');
  }

  /// Gets an existing [EndpointAccess] resource's state with the given [name] and [id].
  static EndpointAccess get(
    String name,
    pulumi.Input<String> id, {
    EndpointAccessState? state,
  }) {
    return EndpointAccess._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EndpointAccess._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshiftserverless/endpointAccess:EndpointAccess',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    address = registerOutput<String>('address');
    arn = registerOutput<String>('arn');
    endpointName = registerOutput<String>('endpointName');
    ownerAccount = registerOutput<String?>('ownerAccount');
    port = registerOutput<int>('port');
    region = registerOutput<String>('region');
    subnetIds = registerOutput<List<String>>('subnetIds');
    vpcEndpoints = registerOutput<List<Map<String, dynamic>>>('vpcEndpoints');
    vpcSecurityGroupIds = registerOutput<List<String>>('vpcSecurityGroupIds');
    workgroupName = registerOutput<String>('workgroupName');
  }
}
