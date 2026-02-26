import 'package:pulumi/pulumi.dart';
import '../instance_connect_endpoint_timeouts/instance_connect_endpoint_timeouts.dart';
import 'instance_connect_endpoint_args.dart';

/// Manages an EC2 Instance Connect Endpoint.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
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
/// var example = new Aws.Ec2TransitGateway.InstanceConnectEndpoint("example", new()
/// {
/// SubnetId = exampleAwsSubnet.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2transitgateway.NewInstanceConnectEndpoint(ctx, "example", &ec2transitgateway.InstanceConnectEndpointArgs{
/// SubnetId: pulumi.Any(exampleAwsSubnet.Id),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new InstanceConnectEndpoint("example", InstanceConnectEndpointArgs.builder()
/// .subnetId(exampleAwsSubnet.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2transitgateway:InstanceConnectEndpoint
/// properties:
/// subnetId: ${exampleAwsSubnet.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import EC2 Instance Connect Endpoints using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/instanceConnectEndpoint:InstanceConnectEndpoint example eice-012345678
/// ```
class InstanceConnectEndpoint extends CustomResource {
  /// The Amazon Resource Name (ARN) of the EC2 Instance Connect Endpoint.
  late final Output<String> arn;

  /// The Availability Zone of the EC2 Instance Connect Endpoint.
  late final Output<String> availabilityZone;

  /// The DNS name of the EC2 Instance Connect Endpoint.
  late final Output<String> dnsName;

  /// The DNS name of the EC2 Instance Connect FIPS Endpoint.
  late final Output<String> fipsDnsName;

  /// IP address type of the endpoint. Valid values are <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span>, <span pulumi-lang-nodejs="`ipv6`" pulumi-lang-dotnet="`Ipv6`" pulumi-lang-go="`ipv6`" pulumi-lang-python="`ipv6`" pulumi-lang-yaml="`ipv6`" pulumi-lang-java="`ipv6`">`ipv6`</span>, and <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span>. The default value is determined by the IP address type of the subnet. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateInstanceConnectEndpoint.html) for more details.
  late final Output<String> ipAddressType;

  /// The IDs of the ENIs that Amazon EC2 automatically created when creating the EC2 Instance Connect Endpoint.
  late final Output<List<String>> networkInterfaceIds;

  /// The ID of the AWS account that created the EC2 Instance Connect Endpoint.
  late final Output<String> ownerId;

  /// Indicates whether your client's IP address is preserved as the source. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool> preserveClientIp;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// One or more security groups to associate with the endpoint. If you don't specify a security group, the default security group for the VPC will be associated with the endpoint.
  late final Output<List<String>> securityGroupIds;

  /// The ID of the subnet in which to create the EC2 Instance Connect Endpoint.
  late final Output<String> subnetId;

  /// Map of tags to assign to this resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<InstanceConnectEndpointTimeouts?> timeouts;

  /// The ID of the VPC in which the EC2 Instance Connect Endpoint was created.
  late final Output<String> vpcId;

  InstanceConnectEndpoint(
    String name, {
    InstanceConnectEndpointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/instanceConnectEndpoint:InstanceConnectEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
