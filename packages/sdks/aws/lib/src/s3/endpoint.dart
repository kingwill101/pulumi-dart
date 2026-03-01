import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_args.dart';
import 'endpoint_network_interface.dart';
import 'endpoint_state.dart';

/// Provides a resource to manage an S3 Outposts Endpoint.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3outposts.Endpoint("example", {
///     outpostId: exampleAwsOutpostsOutpost.id,
///     securityGroupId: exampleAwsSecurityGroup.id,
///     subnetId: exampleAwsSubnet.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3outposts.Endpoint("example",
///     outpost_id=example_aws_outposts_outpost["id"],
///     security_group_id=example_aws_security_group["id"],
///     subnet_id=example_aws_subnet["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3Outposts.Endpoint("example", new()
///     {
///         OutpostId = exampleAwsOutpostsOutpost.Id,
///         SecurityGroupId = exampleAwsSecurityGroup.Id,
///         SubnetId = exampleAwsSubnet.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3outposts"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3outposts.NewEndpoint(ctx, "example", &s3outposts.EndpointArgs{
/// 			OutpostId:       pulumi.Any(exampleAwsOutpostsOutpost.Id),
/// 			SecurityGroupId: pulumi.Any(exampleAwsSecurityGroup.Id),
/// 			SubnetId:        pulumi.Any(exampleAwsSubnet.Id),
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
/// import com.pulumi.aws.s3outposts.Endpoint;
/// import com.pulumi.aws.s3outposts.EndpointArgs;
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
///         var example = new Endpoint("example", EndpointArgs.builder()
///             .outpostId(exampleAwsOutpostsOutpost.id())
///             .securityGroupId(exampleAwsSecurityGroup.id())
///             .subnetId(exampleAwsSubnet.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3outposts:Endpoint
///     properties:
///       outpostId: ${exampleAwsOutpostsOutpost.id}
///       securityGroupId: ${exampleAwsSecurityGroup.id}
///       subnetId: ${exampleAwsSubnet.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Outposts Endpoints using Amazon Resource Name (ARN), EC2 Security Group identifier, and EC2 Subnet identifier, separated by commas (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:s3outposts/endpoint:Endpoint example arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-12345678/endpoint/0123456789abcdef,sg-12345678,subnet-12345678
/// ```
class Endpoint extends pulumi.CustomResource {
  /// Type of access for the network connectivity. Valid values are `Private` or `CustomerOwnedIp`.
  late final pulumi.Output<String> accessType;
  /// Amazon Resource Name (ARN) of the endpoint.
  late final pulumi.Output<String> arn;
  /// VPC CIDR block of the endpoint.
  late final pulumi.Output<String> cidrBlock;
  /// UTC creation time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  late final pulumi.Output<String> creationTime;
  /// The ID of a Customer Owned IP Pool. For more on customer owned IP addresses see the [User Guide](https://docs.aws.amazon.com/outposts/latest/userguide/local-rack.html#local-gateway-subnet).
  late final pulumi.Output<String?> customerOwnedIpv4Pool;
  /// Set of nested attributes for associated Elastic Network Interfaces (ENIs).
  late final pulumi.Output<List<EndpointNetworkInterface>> networkInterfaces;
  /// Identifier of the Outpost to contain this endpoint.
  late final pulumi.Output<String> outpostId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Identifier of the EC2 Security Group.
  late final pulumi.Output<String> securityGroupId;
  /// Identifier of the EC2 Subnet.
  late final pulumi.Output<String> subnetId;

  /// Creates a new [Endpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Endpoint]. {@macro pulumi_s3_outposts_endpoint_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Endpoint(
    String name, {
    EndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3outposts/endpoint:Endpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessType = registerOutput<String>('accessType');
    this.arn = registerOutput<String>('arn');
    this.cidrBlock = registerOutput<String>('cidrBlock');
    this.creationTime = registerOutput<String>('creationTime');
    this.customerOwnedIpv4Pool = registerOutput<String?>('customerOwnedIpv4Pool');
    this.networkInterfaces = registerOutput<List<EndpointNetworkInterface>>('networkInterfaces');
    this.outpostId = registerOutput<String>('outpostId');
    this.region = registerOutput<String>('region');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.subnetId = registerOutput<String>('subnetId');
  }

  /// Gets an existing [Endpoint] resource's state with the given [name] and [id].
  static Endpoint get(
    String name,
    pulumi.Input<String> id, {
    EndpointState? state,
  }) {
    return Endpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Endpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3outposts/endpoint:Endpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessType = registerOutput<String>('accessType');
    this.arn = registerOutput<String>('arn');
    this.cidrBlock = registerOutput<String>('cidrBlock');
    this.creationTime = registerOutput<String>('creationTime');
    this.customerOwnedIpv4Pool = registerOutput<String?>('customerOwnedIpv4Pool');
    this.networkInterfaces = registerOutput<List<EndpointNetworkInterface>>('networkInterfaces');
    this.outpostId = registerOutput<String>('outpostId');
    this.region = registerOutput<String>('region');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.subnetId = registerOutput<String>('subnetId');
  }
}
