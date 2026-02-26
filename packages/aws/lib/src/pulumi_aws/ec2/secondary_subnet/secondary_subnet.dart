import 'package:pulumi/pulumi.dart';
import '../secondary_subnet_ipv4_cidr_block_association/secondary_subnet_ipv4_cidr_block_association.dart';
import '../secondary_subnet_timeouts/secondary_subnet_timeouts.dart';
import 'secondary_subnet_args.dart';

/// Provides an EC2 Secondary Subnet resource.
///
/// A secondary subnet is a subnet within a secondary network that provides high-performance networking capabilities for specialized workloads such as RDMA (Remote Direct Memory Access) applications.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.SecondaryNetwork("example", {
/// ipv4CidrBlock: "10.0.0.0/16",
/// networkType: "rdma",
/// tags: {
/// Name: "example-secondary-network",
/// },
/// });
/// const exampleSecondarySubnet = new aws.ec2.SecondarySubnet("example", {
/// secondaryNetworkId: example.id,
/// ipv4CidrBlock: "10.0.1.0/24",
/// availabilityZone: "us-west-2a",
/// tags: {
/// Name: "example-secondary-subnet",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.SecondaryNetwork("example",
/// ipv4_cidr_block="10.0.0.0/16",
/// network_type="rdma",
/// tags={
/// "Name": "example-secondary-network",
/// })
/// example_secondary_subnet = aws.ec2.SecondarySubnet("example",
/// secondary_network_id=example.id,
/// ipv4_cidr_block="10.0.1.0/24",
/// availability_zone="us-west-2a",
/// tags={
/// "Name": "example-secondary-subnet",
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
/// var example = new Aws.Ec2.SecondaryNetwork("example", new()
/// {
/// Ipv4CidrBlock = "10.0.0.0/16",
/// NetworkType = "rdma",
/// Tags =
/// {
/// { "Name", "example-secondary-network" },
/// },
/// });
///
/// var exampleSecondarySubnet = new Aws.Ec2.SecondarySubnet("example", new()
/// {
/// SecondaryNetworkId = example.Id,
/// Ipv4CidrBlock = "10.0.1.0/24",
/// AvailabilityZone = "us-west-2a",
/// Tags =
/// {
/// { "Name", "example-secondary-subnet" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ec2.NewSecondaryNetwork(ctx, "example", &ec2.SecondaryNetworkArgs{
/// Ipv4CidrBlock: pulumi.String("10.0.0.0/16"),
/// NetworkType:   pulumi.String("rdma"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example-secondary-network"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewSecondarySubnet(ctx, "example", &ec2.SecondarySubnetArgs{
/// SecondaryNetworkId: example.ID(),
/// Ipv4CidrBlock:      pulumi.String("10.0.1.0/24"),
/// AvailabilityZone:   pulumi.String("us-west-2a"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example-secondary-subnet"),
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
/// import com.pulumi.aws.ec2.SecondaryNetwork;
/// import com.pulumi.aws.ec2.SecondaryNetworkArgs;
/// import com.pulumi.aws.ec2.SecondarySubnet;
/// import com.pulumi.aws.ec2.SecondarySubnetArgs;
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
/// var example = new SecondaryNetwork("example", SecondaryNetworkArgs.builder()
/// .ipv4CidrBlock("10.0.0.0/16")
/// .networkType("rdma")
/// .tags(Map.of("Name", "example-secondary-network"))
/// .build());
///
/// var exampleSecondarySubnet = new SecondarySubnet("exampleSecondarySubnet", SecondarySubnetArgs.builder()
/// .secondaryNetworkId(example.id())
/// .ipv4CidrBlock("10.0.1.0/24")
/// .availabilityZone("us-west-2a")
/// .tags(Map.of("Name", "example-secondary-subnet"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:SecondaryNetwork
/// properties:
/// ipv4CidrBlock: 10.0.0.0/16
/// networkType: rdma
/// tags:
/// Name: example-secondary-network
/// exampleSecondarySubnet:
/// type: aws:ec2:SecondarySubnet
/// name: example
/// properties:
/// secondaryNetworkId: ${example.id}
/// ipv4CidrBlock: 10.0.1.0/24
/// availabilityZone: us-west-2a
/// tags:
/// Name: example-secondary-subnet
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Using Availability Zone ID
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const available = aws.getAvailabilityZones({
/// state: "available",
/// filters: [{
/// name: "opt-in-status",
/// values: ["opt-in-not-required"],
/// }],
/// });
/// const example = new aws.ec2.SecondaryNetwork("example", {
/// ipv4CidrBlock: "10.0.0.0/16",
/// networkType: "rdma",
/// tags: {
/// Name: "example-secondary-network",
/// },
/// });
/// const exampleSecondarySubnet = new aws.ec2.SecondarySubnet("example", {
/// secondaryNetworkId: example.id,
/// ipv4CidrBlock: "10.0.1.0/24",
/// availabilityZoneId: available.then(available => available.zoneIds?.[0]),
/// tags: {
/// Name: "example-secondary-subnet",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// available = aws.get_availability_zones(state="available",
/// filters=[{
/// "name": "opt-in-status",
/// "values": ["opt-in-not-required"],
/// }])
/// example = aws.ec2.SecondaryNetwork("example",
/// ipv4_cidr_block="10.0.0.0/16",
/// network_type="rdma",
/// tags={
/// "Name": "example-secondary-network",
/// })
/// example_secondary_subnet = aws.ec2.SecondarySubnet("example",
/// secondary_network_id=example.id,
/// ipv4_cidr_block="10.0.1.0/24",
/// availability_zone_id=available.zone_ids[0],
/// tags={
/// "Name": "example-secondary-subnet",
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
/// var available = Aws.GetAvailabilityZones.Invoke(new()
/// {
/// State = "available",
/// Filters = new[]
/// {
/// new Aws.Inputs.GetAvailabilityZonesFilterInputArgs
/// {
/// Name = "opt-in-status",
/// Values = new[]
/// {
/// "opt-in-not-required",
/// },
/// },
/// },
/// });
///
/// var example = new Aws.Ec2.SecondaryNetwork("example", new()
/// {
/// Ipv4CidrBlock = "10.0.0.0/16",
/// NetworkType = "rdma",
/// Tags =
/// {
/// { "Name", "example-secondary-network" },
/// },
/// });
///
/// var exampleSecondarySubnet = new Aws.Ec2.SecondarySubnet("example", new()
/// {
/// SecondaryNetworkId = example.Id,
/// Ipv4CidrBlock = "10.0.1.0/24",
/// AvailabilityZoneId = available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.ZoneIds[0]),
/// Tags =
/// {
/// { "Name", "example-secondary-subnet" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// available, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{
/// State: pulumi.StringRef("available"),
/// Filters: []aws.GetAvailabilityZonesFilter{
/// {
/// Name: "opt-in-status",
/// Values: []string{
/// "opt-in-not-required",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// example, err := ec2.NewSecondaryNetwork(ctx, "example", &ec2.SecondaryNetworkArgs{
/// Ipv4CidrBlock: pulumi.String("10.0.0.0/16"),
/// NetworkType:   pulumi.String("rdma"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example-secondary-network"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewSecondarySubnet(ctx, "example", &ec2.SecondarySubnetArgs{
/// SecondaryNetworkId: example.ID(),
/// Ipv4CidrBlock:      pulumi.String("10.0.1.0/24"),
/// AvailabilityZoneId: pulumi.String(available.ZoneIds[0]),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example-secondary-subnet"),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.ec2.SecondaryNetwork;
/// import com.pulumi.aws.ec2.SecondaryNetworkArgs;
/// import com.pulumi.aws.ec2.SecondarySubnet;
/// import com.pulumi.aws.ec2.SecondarySubnetArgs;
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
/// final var available = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
/// .state("available")
/// .filters(GetAvailabilityZonesFilterArgs.builder()
/// .name("opt-in-status")
/// .values("opt-in-not-required")
/// .build())
/// .build());
///
/// var example = new SecondaryNetwork("example", SecondaryNetworkArgs.builder()
/// .ipv4CidrBlock("10.0.0.0/16")
/// .networkType("rdma")
/// .tags(Map.of("Name", "example-secondary-network"))
/// .build());
///
/// var exampleSecondarySubnet = new SecondarySubnet("exampleSecondarySubnet", SecondarySubnetArgs.builder()
/// .secondaryNetworkId(example.id())
/// .ipv4CidrBlock("10.0.1.0/24")
/// .availabilityZoneId(available.zoneIds()[0])
/// .tags(Map.of("Name", "example-secondary-subnet"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:SecondaryNetwork
/// properties:
/// ipv4CidrBlock: 10.0.0.0/16
/// networkType: rdma
/// tags:
/// Name: example-secondary-network
/// exampleSecondarySubnet:
/// type: aws:ec2:SecondarySubnet
/// name: example
/// properties:
/// secondaryNetworkId: ${example.id}
/// ipv4CidrBlock: 10.0.1.0/24
/// availabilityZoneId: ${available.zoneIds[0]}
/// tags:
/// Name: example-secondary-subnet
/// variables:
/// available:
/// fn::invoke:
/// function: aws:getAvailabilityZones
/// arguments:
/// state: available
/// filters:
/// - name: opt-in-status
/// values:
/// - opt-in-not-required
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> - (String) ID of the secondary subnet.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import EC2 Secondary Subnets using the secondary subnet ID. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/secondarySubnet:SecondarySubnet example ss-0123456789abcdef0
/// ```
class SecondarySubnet extends CustomResource {
  /// ARN of the secondary subnet.
  late final Output<String> arn;

  /// Availability Zone for the secondary subnet. Cannot be specified with <span pulumi-lang-nodejs="`availabilityZoneId`" pulumi-lang-dotnet="`AvailabilityZoneId`" pulumi-lang-go="`availabilityZoneId`" pulumi-lang-python="`availability_zone_id`" pulumi-lang-yaml="`availabilityZoneId`" pulumi-lang-java="`availabilityZoneId`">`availability_zone_id`</span>.
  late final Output<String> availabilityZone;

  /// ID of the Availability Zone for the secondary subnet. This option is preferred over <span pulumi-lang-nodejs="`availabilityZone`" pulumi-lang-dotnet="`AvailabilityZone`" pulumi-lang-go="`availabilityZone`" pulumi-lang-python="`availability_zone`" pulumi-lang-yaml="`availabilityZone`" pulumi-lang-java="`availabilityZone`">`availability_zone`</span> as it provides a consistent identifier across AWS accounts. Cannot be specified with <span pulumi-lang-nodejs="`availabilityZone`" pulumi-lang-dotnet="`AvailabilityZone`" pulumi-lang-go="`availabilityZone`" pulumi-lang-python="`availability_zone`" pulumi-lang-yaml="`availabilityZone`" pulumi-lang-java="`availabilityZone`">`availability_zone`</span>.
  late final Output<String> availabilityZoneId;

  /// IPv4 CIDR block for the secondary subnet. The CIDR block size must be between `/12` and `/28`.
  late final Output<String> ipv4CidrBlock;

  /// A list of IPv4 CIDR block associations for the secondary network.
  late final Output<List<SecondarySubnetIpv4CidrBlockAssociation>>
      ipv4CidrBlockAssociations;

  /// ID of the AWS account that owns the secondary subnet.
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the secondary network in which to create the secondary subnet.
  late final Output<String> secondaryNetworkId;

  /// Type of the secondary network (e.g., <span pulumi-lang-nodejs="`rdma`" pulumi-lang-dotnet="`Rdma`" pulumi-lang-go="`rdma`" pulumi-lang-python="`rdma`" pulumi-lang-yaml="`rdma`" pulumi-lang-java="`rdma`">`rdma`</span>).
  late final Output<String> secondaryNetworkType;

  /// ID of the secondary subnet.
  late final Output<String> secondarySubnetId;

  /// State of the IPv4 CIDR block association.
  late final Output<String> state;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<SecondarySubnetTimeouts?> timeouts;

  SecondarySubnet(
    String name, {
    SecondarySubnetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/secondarySubnet:SecondarySubnet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.availabilityZone = Output.createUnknown<String>();
    this.availabilityZoneId = Output.createUnknown<String>();
    this.ipv4CidrBlock = Output.createUnknown<String>();
    this.ipv4CidrBlockAssociations =
        Output.createUnknown<List<SecondarySubnetIpv4CidrBlockAssociation>>();
    this.ownerId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.secondaryNetworkId = Output.createUnknown<String>();
    this.secondaryNetworkType = Output.createUnknown<String>();
    this.secondarySubnetId = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<SecondarySubnetTimeouts?>();
  }
}
