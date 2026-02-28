import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_connect_endpoint_args.dart';
import 'instance_connect_endpoint_timeouts.dart';

/// Manages an EC2 Instance Connect Endpoint.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.InstanceConnectEndpoint("example", {subnetId: exampleAwsSubnet.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.InstanceConnectEndpoint("example", subnet_id=example_aws_subnet["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2TransitGateway.InstanceConnectEndpoint("example", new()
///     {
///         SubnetId = exampleAwsSubnet.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.NewInstanceConnectEndpoint(ctx, "example", &ec2transitgateway.InstanceConnectEndpointArgs{
/// 			SubnetId: pulumi.Any(exampleAwsSubnet.Id),
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
/// import com.pulumi.aws.ec2transitgateway.InstanceConnectEndpoint;
/// import com.pulumi.aws.ec2transitgateway.InstanceConnectEndpointArgs;
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
///         var example = new InstanceConnectEndpoint("example", InstanceConnectEndpointArgs.builder()
///             .subnetId(exampleAwsSubnet.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2transitgateway:InstanceConnectEndpoint
///     properties:
///       subnetId: ${exampleAwsSubnet.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EC2 Instance Connect Endpoints using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/instanceConnectEndpoint:InstanceConnectEndpoint example eice-012345678
/// ```
class InstanceConnectEndpoint extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the EC2 Instance Connect Endpoint.
  late final pulumi.Output<String> arn;

  /// The Availability Zone of the EC2 Instance Connect Endpoint.
  late final pulumi.Output<String> availabilityZone;

  /// The DNS name of the EC2 Instance Connect Endpoint.
  late final pulumi.Output<String> dnsName;

  /// The DNS name of the EC2 Instance Connect FIPS Endpoint.
  late final pulumi.Output<String> fipsDnsName;

  /// IP address type of the endpoint. Valid values are `ipv4`, `ipv6`, and `dualstack`. The default value is determined by the IP address type of the subnet. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateInstanceConnectEndpoint.html) for more details.
  late final pulumi.Output<String> ipAddressType;

  /// The IDs of the ENIs that Amazon EC2 automatically created when creating the EC2 Instance Connect Endpoint.
  late final pulumi.Output<List<String>> networkInterfaceIds;

  /// The ID of the AWS account that created the EC2 Instance Connect Endpoint.
  late final pulumi.Output<String> ownerId;

  /// Indicates whether your client's IP address is preserved as the source. Default: `true`.
  late final pulumi.Output<bool> preserveClientIp;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// One or more security groups to associate with the endpoint. If you don't specify a security group, the default security group for the VPC will be associated with the endpoint.
  late final pulumi.Output<List<String>> securityGroupIds;

  /// The ID of the subnet in which to create the EC2 Instance Connect Endpoint.
  late final pulumi.Output<String> subnetId;

  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<InstanceConnectEndpointTimeouts?> timeouts;

  /// The ID of the VPC in which the EC2 Instance Connect Endpoint was created.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [InstanceConnectEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceConnectEndpoint]. {@macro pulumi_ec2transitgateway_instance_connect_endpoint_instance_connect_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceConnectEndpoint(
    String name, {
    InstanceConnectEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/instanceConnectEndpoint:InstanceConnectEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.dnsName = registerOutput<String>('dnsName');
    this.fipsDnsName = registerOutput<String>('fipsDnsName');
    this.ipAddressType = registerOutput<String>('ipAddressType');
    this.networkInterfaceIds =
        registerOutput<List<String>>('networkInterfaceIds');
    this.ownerId = registerOutput<String>('ownerId');
    this.preserveClientIp = registerOutput<bool>('preserveClientIp');
    this.region = registerOutput<String>('region');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.subnetId = registerOutput<String>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts =
        registerOutput<InstanceConnectEndpointTimeouts?>('timeouts');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
