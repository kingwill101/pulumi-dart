import 'package:pulumi/pulumi.dart';
import '../instance_capacity_reservation_specification/instance_capacity_reservation_specification.dart';
import '../instance_cpu_options/instance_cpu_options.dart';
import '../instance_credit_specification/instance_credit_specification.dart';
import '../instance_ebs_block_device/instance_ebs_block_device.dart';
import '../instance_enclave_options/instance_enclave_options.dart';
import '../instance_ephemeral_block_device/instance_ephemeral_block_device.dart';
import '../instance_instance_market_options/instance_instance_market_options.dart';
import '../instance_launch_template/instance_launch_template.dart';
import '../instance_maintenance_options/instance_maintenance_options.dart';
import '../instance_metadata_options/instance_metadata_options.dart';
import '../instance_network_interface/instance_network_interface.dart';
import '../instance_primary_network_interface/instance_primary_network_interface.dart';
import '../instance_private_dns_name_options/instance_private_dns_name_options.dart';
import '../instance_root_block_device/instance_root_block_device.dart';
import '../instance_secondary_network_interface/instance_secondary_network_interface.dart';
import 'instance_args2.dart';

/// Provides an EC2 instance resource. This allows instances to be created, updated, and deleted.
///
/// ## Example Usage
///
/// ### Basic example using AMI lookup
///
/// Using a data source
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ubuntu = aws.ec2.getAmi({
/// mostRecent: true,
/// filters: [
/// {
/// name: "name",
/// values: ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"],
/// },
/// {
/// name: "virtualization-type",
/// values: ["hvm"],
/// },
/// ],
/// owners: ["099720109477"],
/// });
/// const example = new aws.ec2.Instance("example", {
/// ami: ubuntu.then(ubuntu => ubuntu.id),
/// instanceType: aws.ec2.InstanceType.T3_Micro,
/// tags: {
/// Name: "HelloWorld",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ubuntu = aws.ec2.get_ami(most_recent=True,
/// filters=[
/// {
/// "name": "name",
/// "values": ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"],
/// },
/// {
/// "name": "virtualization-type",
/// "values": ["hvm"],
/// },
/// ],
/// owners=["099720109477"])
/// example = aws.ec2.Instance("example",
/// ami=ubuntu.id,
/// instance_type=aws.ec2.InstanceType.T3_MICRO,
/// tags={
/// "Name": "HelloWorld",
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
/// var ubuntu = Aws.Ec2.GetAmi.Invoke(new()
/// {
/// MostRecent = true,
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetAmiFilterInputArgs
/// {
/// Name = "name",
/// Values = new[]
/// {
/// "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*",
/// },
/// },
/// new Aws.Ec2.Inputs.GetAmiFilterInputArgs
/// {
/// Name = "virtualization-type",
/// Values = new[]
/// {
/// "hvm",
/// },
/// },
/// },
/// Owners = new[]
/// {
/// "099720109477",
/// },
/// });
///
/// var example = new Aws.Ec2.Instance("example", new()
/// {
/// Ami = ubuntu.Apply(getAmiResult => getAmiResult.Id),
/// InstanceType = Aws.Ec2.InstanceType.T3_Micro,
/// Tags =
/// {
/// { "Name", "HelloWorld" },
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
/// ubuntu, err := ec2.LookupAmi(ctx, &ec2.LookupAmiArgs{
/// MostRecent: pulumi.BoolRef(true),
/// Filters: []ec2.GetAmiFilter{
/// {
/// Name: "name",
/// Values: []string{
/// "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*",
/// },
/// },
/// {
/// Name: "virtualization-type",
/// Values: []string{
/// "hvm",
/// },
/// },
/// },
/// Owners: []string{
/// "099720109477",
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewInstance(ctx, "example", &ec2.InstanceArgs{
/// Ami:          pulumi.String(ubuntu.Id),
/// InstanceType: pulumi.String(ec2.InstanceType_T3_Micro),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("HelloWorld"),
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
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetAmiArgs;
/// import com.pulumi.aws.ec2.Instance;
/// import com.pulumi.aws.ec2.InstanceArgs;
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
/// final var ubuntu = Ec2Functions.getAmi(GetAmiArgs.builder()
/// .mostRecent(true)
/// .filters(
/// GetAmiFilterArgs.builder()
/// .name("name")
/// .values("ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*")
/// .build(),
/// GetAmiFilterArgs.builder()
/// .name("virtualization-type")
/// .values("hvm")
/// .build())
/// .owners("099720109477")
/// .build());
///
/// var example = new Instance("example", InstanceArgs.builder()
/// .ami(ubuntu.id())
/// .instanceType("t3.micro")
/// .tags(Map.of("Name", "HelloWorld"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:Instance
/// properties:
/// ami: ${ubuntu.id}
/// instanceType: t3.micro
/// tags:
/// Name: HelloWorld
/// variables:
/// ubuntu:
/// fn::invoke:
/// function: aws:ec2:getAmi
/// arguments:
/// mostRecent: true
/// filters:
/// - name: name
/// values:
/// - ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*
/// - name: virtualization-type
/// values:
/// - hvm
/// owners:
/// - '099720109477'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Using AWS Systems Manager Parameter Store
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.Instance("example", {
/// ami: "resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64",
/// instanceType: aws.ec2.InstanceType.T3_Micro,
/// tags: {
/// Name: "HelloWorld",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.Instance("example",
/// ami="resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64",
/// instance_type=aws.ec2.InstanceType.T3_MICRO,
/// tags={
/// "Name": "HelloWorld",
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
/// var example = new Aws.Ec2.Instance("example", new()
/// {
/// Ami = "resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64",
/// InstanceType = Aws.Ec2.InstanceType.T3_Micro,
/// Tags =
/// {
/// { "Name", "HelloWorld" },
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
/// _, err := ec2.NewInstance(ctx, "example", &ec2.InstanceArgs{
/// Ami:          pulumi.String("resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"),
/// InstanceType: pulumi.String(ec2.InstanceType_T3_Micro),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("HelloWorld"),
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
/// import com.pulumi.aws.ec2.Instance;
/// import com.pulumi.aws.ec2.InstanceArgs;
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
/// var example = new Instance("example", InstanceArgs.builder()
/// .ami("resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64")
/// .instanceType("t3.micro")
/// .tags(Map.of("Name", "HelloWorld"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:Instance
/// properties:
/// ami: resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64
/// instanceType: t3.micro
/// tags:
/// Name: HelloWorld
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Spot instance example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getAmi({
/// mostRecent: true,
/// owners: ["amazon"],
/// filters: [
/// {
/// name: "architecture",
/// values: ["arm64"],
/// },
/// {
/// name: "name",
/// values: ["al2023-ami-2023*"],
/// },
/// ],
/// });
/// const exampleInstance = new aws.ec2.Instance("example", {
/// ami: example.then(example => example.id),
/// instanceMarketOptions: {
/// marketType: "spot",
/// spotOptions: {
/// maxPrice: "0.0031",
/// },
/// },
/// instanceType: aws.ec2.InstanceType.T4g_Nano,
/// tags: {
/// Name: "test-spot",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_ami(most_recent=True,
/// owners=["amazon"],
/// filters=[
/// {
/// "name": "architecture",
/// "values": ["arm64"],
/// },
/// {
/// "name": "name",
/// "values": ["al2023-ami-2023*"],
/// },
/// ])
/// example_instance = aws.ec2.Instance("example",
/// ami=example.id,
/// instance_market_options={
/// "market_type": "spot",
/// "spot_options": {
/// "max_price": "0.0031",
/// },
/// },
/// instance_type=aws.ec2.InstanceType.T4G_NANO,
/// tags={
/// "Name": "test-spot",
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
/// var example = Aws.Ec2.GetAmi.Invoke(new()
/// {
/// MostRecent = true,
/// Owners = new[]
/// {
/// "amazon",
/// },
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetAmiFilterInputArgs
/// {
/// Name = "architecture",
/// Values = new[]
/// {
/// "arm64",
/// },
/// },
/// new Aws.Ec2.Inputs.GetAmiFilterInputArgs
/// {
/// Name = "name",
/// Values = new[]
/// {
/// "al2023-ami-2023*",
/// },
/// },
/// },
/// });
///
/// var exampleInstance = new Aws.Ec2.Instance("example", new()
/// {
/// Ami = example.Apply(getAmiResult => getAmiResult.Id),
/// InstanceMarketOptions = new Aws.Ec2.Inputs.InstanceInstanceMarketOptionsArgs
/// {
/// MarketType = "spot",
/// SpotOptions = new Aws.Ec2.Inputs.InstanceInstanceMarketOptionsSpotOptionsArgs
/// {
/// MaxPrice = "0.0031",
/// },
/// },
/// InstanceType = Aws.Ec2.InstanceType.T4g_Nano,
/// Tags =
/// {
/// { "Name", "test-spot" },
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
/// example, err := ec2.LookupAmi(ctx, &ec2.LookupAmiArgs{
/// MostRecent: pulumi.BoolRef(true),
/// Owners: []string{
/// "amazon",
/// },
/// Filters: []ec2.GetAmiFilter{
/// {
/// Name: "architecture",
/// Values: []string{
/// "arm64",
/// },
/// },
/// {
/// Name: "name",
/// Values: []string{
/// "al2023-ami-2023*",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewInstance(ctx, "example", &ec2.InstanceArgs{
/// Ami: pulumi.String(example.Id),
/// InstanceMarketOptions: &ec2.InstanceInstanceMarketOptionsArgs{
/// MarketType: pulumi.String("spot"),
/// SpotOptions: &ec2.InstanceInstanceMarketOptionsSpotOptionsArgs{
/// MaxPrice: pulumi.String("0.0031"),
/// },
/// },
/// InstanceType: pulumi.String(ec2.InstanceType_T4g_Nano),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("test-spot"),
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
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetAmiArgs;
/// import com.pulumi.aws.ec2.Instance;
/// import com.pulumi.aws.ec2.InstanceArgs;
/// import com.pulumi.aws.ec2.inputs.InstanceInstanceMarketOptionsArgs;
/// import com.pulumi.aws.ec2.inputs.InstanceInstanceMarketOptionsSpotOptionsArgs;
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
/// final var example = Ec2Functions.getAmi(GetAmiArgs.builder()
/// .mostRecent(true)
/// .owners("amazon")
/// .filters(
/// GetAmiFilterArgs.builder()
/// .name("architecture")
/// .values("arm64")
/// .build(),
/// GetAmiFilterArgs.builder()
/// .name("name")
/// .values("al2023-ami-2023*")
/// .build())
/// .build());
///
/// var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
/// .ami(example.id())
/// .instanceMarketOptions(InstanceInstanceMarketOptionsArgs.builder()
/// .marketType("spot")
/// .spotOptions(InstanceInstanceMarketOptionsSpotOptionsArgs.builder()
/// .maxPrice("0.0031")
/// .build())
/// .build())
/// .instanceType("t4g.nano")
/// .tags(Map.of("Name", "test-spot"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleInstance:
/// type: aws:ec2:Instance
/// name: example
/// properties:
/// ami: ${example.id}
/// instanceMarketOptions:
/// marketType: spot
/// spotOptions:
/// maxPrice: 0.0031
/// instanceType: t4g.nano
/// tags:
/// Name: test-spot
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ec2:getAmi
/// arguments:
/// mostRecent: true
/// owners:
/// - amazon
/// filters:
/// - name: architecture
/// values:
/// - arm64
/// - name: name
/// values:
/// - al2023-ami-2023*
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Network and credit specification example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const myVpc = new aws.ec2.Vpc("my_vpc", {
/// cidrBlock: "172.16.0.0/16",
/// tags: {
/// Name: "tf-example",
/// },
/// });
/// const mySubnet = new aws.ec2.Subnet("my_subnet", {
/// vpcId: myVpc.id,
/// cidrBlock: "172.16.10.0/24",
/// availabilityZone: "us-west-2a",
/// tags: {
/// Name: "tf-example",
/// },
/// });
/// const example = new aws.ec2.NetworkInterface("example", {
/// subnetId: mySubnet.id,
/// privateIps: ["172.16.10.100"],
/// tags: {
/// Name: "primary_network_interface",
/// },
/// });
/// const exampleInstance = new aws.ec2.Instance("example", {
/// ami: "ami-005e54dee72cc1d00",
/// instanceType: aws.ec2.InstanceType.T2_Micro,
/// primaryNetworkInterface: {
/// networkInterfaceId: example.id,
/// },
/// creditSpecification: {
/// cpuCredits: "unlimited",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_vpc = aws.ec2.Vpc("my_vpc",
/// cidr_block="172.16.0.0/16",
/// tags={
/// "Name": "tf-example",
/// })
/// my_subnet = aws.ec2.Subnet("my_subnet",
/// vpc_id=my_vpc.id,
/// cidr_block="172.16.10.0/24",
/// availability_zone="us-west-2a",
/// tags={
/// "Name": "tf-example",
/// })
/// example = aws.ec2.NetworkInterface("example",
/// subnet_id=my_subnet.id,
/// private_ips=["172.16.10.100"],
/// tags={
/// "Name": "primary_network_interface",
/// })
/// example_instance = aws.ec2.Instance("example",
/// ami="ami-005e54dee72cc1d00",
/// instance_type=aws.ec2.InstanceType.T2_MICRO,
/// primary_network_interface={
/// "network_interface_id": example.id,
/// },
/// credit_specification={
/// "cpu_credits": "unlimited",
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
/// var myVpc = new Aws.Ec2.Vpc("my_vpc", new()
/// {
/// CidrBlock = "172.16.0.0/16",
/// Tags =
/// {
/// { "Name", "tf-example" },
/// },
/// });
///
/// var mySubnet = new Aws.Ec2.Subnet("my_subnet", new()
/// {
/// VpcId = myVpc.Id,
/// CidrBlock = "172.16.10.0/24",
/// AvailabilityZone = "us-west-2a",
/// Tags =
/// {
/// { "Name", "tf-example" },
/// },
/// });
///
/// var example = new Aws.Ec2.NetworkInterface("example", new()
/// {
/// SubnetId = mySubnet.Id,
/// PrivateIps = new[]
/// {
/// "172.16.10.100",
/// },
/// Tags =
/// {
/// { "Name", "primary_network_interface" },
/// },
/// });
///
/// var exampleInstance = new Aws.Ec2.Instance("example", new()
/// {
/// Ami = "ami-005e54dee72cc1d00",
/// InstanceType = Aws.Ec2.InstanceType.T2_Micro,
/// PrimaryNetworkInterface = new Aws.Ec2.Inputs.InstancePrimaryNetworkInterfaceArgs
/// {
/// NetworkInterfaceId = example.Id,
/// },
/// CreditSpecification = new Aws.Ec2.Inputs.InstanceCreditSpecificationArgs
/// {
/// CpuCredits = "unlimited",
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
/// myVpc, err := ec2.NewVpc(ctx, "my_vpc", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("172.16.0.0/16"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("tf-example"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// mySubnet, err := ec2.NewSubnet(ctx, "my_subnet", &ec2.SubnetArgs{
/// VpcId:            myVpc.ID(),
/// CidrBlock:        pulumi.String("172.16.10.0/24"),
/// AvailabilityZone: pulumi.String("us-west-2a"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("tf-example"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// example, err := ec2.NewNetworkInterface(ctx, "example", &ec2.NetworkInterfaceArgs{
/// SubnetId: mySubnet.ID(),
/// PrivateIps: pulumi.StringArray{
/// pulumi.String("172.16.10.100"),
/// },
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("primary_network_interface"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewInstance(ctx, "example", &ec2.InstanceArgs{
/// Ami:          pulumi.String("ami-005e54dee72cc1d00"),
/// InstanceType: pulumi.String(ec2.InstanceType_T2_Micro),
/// PrimaryNetworkInterface: &ec2.InstancePrimaryNetworkInterfaceArgs{
/// NetworkInterfaceId: example.ID(),
/// },
/// CreditSpecification: &ec2.InstanceCreditSpecificationArgs{
/// CpuCredits: pulumi.String("unlimited"),
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
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.aws.ec2.NetworkInterface;
/// import com.pulumi.aws.ec2.NetworkInterfaceArgs;
/// import com.pulumi.aws.ec2.Instance;
/// import com.pulumi.aws.ec2.InstanceArgs;
/// import com.pulumi.aws.ec2.inputs.InstancePrimaryNetworkInterfaceArgs;
/// import com.pulumi.aws.ec2.inputs.InstanceCreditSpecificationArgs;
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
/// var myVpc = new Vpc("myVpc", VpcArgs.builder()
/// .cidrBlock("172.16.0.0/16")
/// .tags(Map.of("Name", "tf-example"))
/// .build());
///
/// var mySubnet = new Subnet("mySubnet", SubnetArgs.builder()
/// .vpcId(myVpc.id())
/// .cidrBlock("172.16.10.0/24")
/// .availabilityZone("us-west-2a")
/// .tags(Map.of("Name", "tf-example"))
/// .build());
///
/// var example = new NetworkInterface("example", NetworkInterfaceArgs.builder()
/// .subnetId(mySubnet.id())
/// .privateIps("172.16.10.100")
/// .tags(Map.of("Name", "primary_network_interface"))
/// .build());
///
/// var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
/// .ami("ami-005e54dee72cc1d00")
/// .instanceType("t2.micro")
/// .primaryNetworkInterface(InstancePrimaryNetworkInterfaceArgs.builder()
/// .networkInterfaceId(example.id())
/// .build())
/// .creditSpecification(InstanceCreditSpecificationArgs.builder()
/// .cpuCredits("unlimited")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myVpc:
/// type: aws:ec2:Vpc
/// name: my_vpc
/// properties:
/// cidrBlock: 172.16.0.0/16
/// tags:
/// Name: tf-example
/// mySubnet:
/// type: aws:ec2:Subnet
/// name: my_subnet
/// properties:
/// vpcId: ${myVpc.id}
/// cidrBlock: 172.16.10.0/24
/// availabilityZone: us-west-2a
/// tags:
/// Name: tf-example
/// example:
/// type: aws:ec2:NetworkInterface
/// properties:
/// subnetId: ${mySubnet.id}
/// privateIps:
/// - 172.16.10.100
/// tags:
/// Name: primary_network_interface
/// exampleInstance:
/// type: aws:ec2:Instance
/// name: example
/// properties:
/// ami: ami-005e54dee72cc1d00
/// instanceType: t2.micro
/// primaryNetworkInterface:
/// networkInterfaceId: ${example.id}
/// creditSpecification:
/// cpuCredits: unlimited
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### CPU options example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.Vpc("example", {
/// cidrBlock: "172.16.0.0/16",
/// tags: {
/// Name: "tf-example",
/// },
/// });
/// const exampleSubnet = new aws.ec2.Subnet("example", {
/// vpcId: example.id,
/// cidrBlock: "172.16.10.0/24",
/// availabilityZone: "us-east-2a",
/// tags: {
/// Name: "tf-example",
/// },
/// });
/// const amzn_linux_2023_ami = aws.ec2.getAmi({
/// mostRecent: true,
/// owners: ["amazon"],
/// filters: [{
/// name: "name",
/// values: ["al2023-ami-2023.*-x86_64"],
/// }],
/// });
/// const exampleInstance = new aws.ec2.Instance("example", {
/// ami: amzn_linux_2023_ami.then(amzn_linux_2023_ami => amzn_linux_2023_ami.id),
/// instanceType: aws.ec2.InstanceType.C6a_2XLarge,
/// subnetId: exampleSubnet.id,
/// cpuOptions: {
/// coreCount: 2,
/// threadsPerCore: 2,
/// },
/// tags: {
/// Name: "tf-example",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.Vpc("example",
/// cidr_block="172.16.0.0/16",
/// tags={
/// "Name": "tf-example",
/// })
/// example_subnet = aws.ec2.Subnet("example",
/// vpc_id=example.id,
/// cidr_block="172.16.10.0/24",
/// availability_zone="us-east-2a",
/// tags={
/// "Name": "tf-example",
/// })
/// amzn_linux_2023_ami = aws.ec2.get_ami(most_recent=True,
/// owners=["amazon"],
/// filters=[{
/// "name": "name",
/// "values": ["al2023-ami-2023.*-x86_64"],
/// }])
/// example_instance = aws.ec2.Instance("example",
/// ami=amzn_linux_2023_ami.id,
/// instance_type=aws.ec2.InstanceType.C6A_2_X_LARGE,
/// subnet_id=example_subnet.id,
/// cpu_options={
/// "core_count": 2,
/// "threads_per_core": 2,
/// },
/// tags={
/// "Name": "tf-example",
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
/// var example = new Aws.Ec2.Vpc("example", new()
/// {
/// CidrBlock = "172.16.0.0/16",
/// Tags =
/// {
/// { "Name", "tf-example" },
/// },
/// });
///
/// var exampleSubnet = new Aws.Ec2.Subnet("example", new()
/// {
/// VpcId = example.Id,
/// CidrBlock = "172.16.10.0/24",
/// AvailabilityZone = "us-east-2a",
/// Tags =
/// {
/// { "Name", "tf-example" },
/// },
/// });
///
/// var amzn_linux_2023_ami = Aws.Ec2.GetAmi.Invoke(new()
/// {
/// MostRecent = true,
/// Owners = new[]
/// {
/// "amazon",
/// },
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetAmiFilterInputArgs
/// {
/// Name = "name",
/// Values = new[]
/// {
/// "al2023-ami-2023.*-x86_64",
/// },
/// },
/// },
/// });
///
/// var exampleInstance = new Aws.Ec2.Instance("example", new()
/// {
/// Ami = amzn_linux_2023_ami.Apply(amzn_linux_2023_ami => amzn_linux_2023_ami.Apply(getAmiResult => getAmiResult.Id)),
/// InstanceType = Aws.Ec2.InstanceType.C6a_2XLarge,
/// SubnetId = exampleSubnet.Id,
/// CpuOptions = new Aws.Ec2.Inputs.InstanceCpuOptionsArgs
/// {
/// CoreCount = 2,
/// ThreadsPerCore = 2,
/// },
/// Tags =
/// {
/// { "Name", "tf-example" },
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
/// example, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("172.16.0.0/16"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("tf-example"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// exampleSubnet, err := ec2.NewSubnet(ctx, "example", &ec2.SubnetArgs{
/// VpcId:            example.ID(),
/// CidrBlock:        pulumi.String("172.16.10.0/24"),
/// AvailabilityZone: pulumi.String("us-east-2a"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("tf-example"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// amzn_linux_2023_ami, err := ec2.LookupAmi(ctx, &ec2.LookupAmiArgs{
/// MostRecent: pulumi.BoolRef(true),
/// Owners: []string{
/// "amazon",
/// },
/// Filters: []ec2.GetAmiFilter{
/// {
/// Name: "name",
/// Values: []string{
/// "al2023-ami-2023.*-x86_64",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewInstance(ctx, "example", &ec2.InstanceArgs{
/// Ami:          pulumi.String(amzn_linux_2023_ami.Id),
/// InstanceType: pulumi.String(ec2.InstanceType_C6a_2XLarge),
/// SubnetId:     exampleSubnet.ID(),
/// CpuOptions: &ec2.InstanceCpuOptionsArgs{
/// CoreCount:      pulumi.Int(2),
/// ThreadsPerCore: pulumi.Int(2),
/// },
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("tf-example"),
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
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetAmiArgs;
/// import com.pulumi.aws.ec2.Instance;
/// import com.pulumi.aws.ec2.InstanceArgs;
/// import com.pulumi.aws.ec2.inputs.InstanceCpuOptionsArgs;
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
/// var example = new Vpc("example", VpcArgs.builder()
/// .cidrBlock("172.16.0.0/16")
/// .tags(Map.of("Name", "tf-example"))
/// .build());
///
/// var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
/// .vpcId(example.id())
/// .cidrBlock("172.16.10.0/24")
/// .availabilityZone("us-east-2a")
/// .tags(Map.of("Name", "tf-example"))
/// .build());
///
/// final var amzn-linux-2023-ami = Ec2Functions.getAmi(GetAmiArgs.builder()
/// .mostRecent(true)
/// .owners("amazon")
/// .filters(GetAmiFilterArgs.builder()
/// .name("name")
/// .values("al2023-ami-2023.*-x86_64")
/// .build())
/// .build());
///
/// var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
/// .ami(amzn_linux_2023_ami.id())
/// .instanceType("c6a.2xlarge")
/// .subnetId(exampleSubnet.id())
/// .cpuOptions(InstanceCpuOptionsArgs.builder()
/// .coreCount(2)
/// .threadsPerCore(2)
/// .build())
/// .tags(Map.of("Name", "tf-example"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:Vpc
/// properties:
/// cidrBlock: 172.16.0.0/16
/// tags:
/// Name: tf-example
/// exampleSubnet:
/// type: aws:ec2:Subnet
/// name: example
/// properties:
/// vpcId: ${example.id}
/// cidrBlock: 172.16.10.0/24
/// availabilityZone: us-east-2a
/// tags:
/// Name: tf-example
/// exampleInstance:
/// type: aws:ec2:Instance
/// name: example
/// properties:
/// ami: ${["amzn-linux-2023-ami"].id}
/// instanceType: c6a.2xlarge
/// subnetId: ${exampleSubnet.id}
/// cpuOptions:
/// coreCount: 2
/// threadsPerCore: 2
/// tags:
/// Name: tf-example
/// variables:
/// amzn-linux-2023-ami:
/// fn::invoke:
/// function: aws:ec2:getAmi
/// arguments:
/// mostRecent: true
/// owners:
/// - amazon
/// filters:
/// - name: name
/// values:
/// - al2023-ami-2023.*-x86_64
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Host resource group or License Manager registered AMI example
///
/// A host resource group is a collection of Dedicated Hosts that you can manage as a single entity. As you launch instances, License Manager allocates the hosts and launches instances on them based on the settings that you configured. You can add existing Dedicated Hosts to a host resource group and take advantage of automated host management through License Manager.
///
/// > **NOTE:** A dedicated host is automatically associated with a License Manager host resource group if **Allocate hosts automatically** is enabled. Otherwise, use the <span pulumi-lang-nodejs="`hostResourceGroupArn`" pulumi-lang-dotnet="`HostResourceGroupArn`" pulumi-lang-go="`hostResourceGroupArn`" pulumi-lang-python="`host_resource_group_arn`" pulumi-lang-yaml="`hostResourceGroupArn`" pulumi-lang-java="`hostResourceGroupArn`">`host_resource_group_arn`</span> argument to explicitly associate the instance with the host resource group.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _this = new aws.ec2.Instance("this", {
/// ami: "ami-0dcc1e21636832c5d",
/// instanceType: aws.ec2.InstanceType.M5_Large,
/// hostResourceGroupArn: "arn:aws:resource-groups:us-west-2:123456789012:group/win-testhost",
/// tenancy: "host",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// this = aws.ec2.Instance("this",
/// ami="ami-0dcc1e21636832c5d",
/// instance_type=aws.ec2.InstanceType.M5_LARGE,
/// host_resource_group_arn="arn:aws:resource-groups:us-west-2:123456789012:group/win-testhost",
/// tenancy="host")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @this = new Aws.Ec2.Instance("this", new()
/// {
/// Ami = "ami-0dcc1e21636832c5d",
/// InstanceType = Aws.Ec2.InstanceType.M5_Large,
/// HostResourceGroupArn = "arn:aws:resource-groups:us-west-2:123456789012:group/win-testhost",
/// Tenancy = "host",
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
/// _, err := ec2.NewInstance(ctx, "this", &ec2.InstanceArgs{
/// Ami:                  pulumi.String("ami-0dcc1e21636832c5d"),
/// InstanceType:         pulumi.String(ec2.InstanceType_M5_Large),
/// HostResourceGroupArn: pulumi.String("arn:aws:resource-groups:us-west-2:123456789012:group/win-testhost"),
/// Tenancy:              pulumi.String("host"),
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
/// import com.pulumi.aws.ec2.Instance;
/// import com.pulumi.aws.ec2.InstanceArgs;
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
/// var this_ = new Instance("this", InstanceArgs.builder()
/// .ami("ami-0dcc1e21636832c5d")
/// .instanceType("m5.large")
/// .hostResourceGroupArn("arn:aws:resource-groups:us-west-2:123456789012:group/win-testhost")
/// .tenancy("host")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// this:
/// type: aws:ec2:Instance
/// properties:
/// ami: ami-0dcc1e21636832c5d
/// instanceType: m5.large
/// hostResourceGroupArn: arn:aws:resource-groups:us-west-2:123456789012:group/win-testhost
/// tenancy: host
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Tag Guide
///
/// These are the five types of tags you might encounter relative to an <span pulumi-lang-nodejs="`aws.ec2.Instance`" pulumi-lang-dotnet="`aws.ec2.Instance`" pulumi-lang-go="`ec2.Instance`" pulumi-lang-python="`ec2.Instance`" pulumi-lang-yaml="`aws.ec2.Instance`" pulumi-lang-java="`aws.ec2.Instance`">`aws.ec2.Instance`</span>:
///
/// 1. **Instance tags**: Applied to instances but not to <span pulumi-lang-nodejs="`ebsBlockDevice`" pulumi-lang-dotnet="`EbsBlockDevice`" pulumi-lang-go="`ebsBlockDevice`" pulumi-lang-python="`ebs_block_device`" pulumi-lang-yaml="`ebsBlockDevice`" pulumi-lang-java="`ebsBlockDevice`">`ebs_block_device`</span> and <span pulumi-lang-nodejs="`rootBlockDevice`" pulumi-lang-dotnet="`RootBlockDevice`" pulumi-lang-go="`rootBlockDevice`" pulumi-lang-python="`root_block_device`" pulumi-lang-yaml="`rootBlockDevice`" pulumi-lang-java="`rootBlockDevice`">`root_block_device`</span> volumes.
/// 2. **Default tags**: Applied to the instance and to <span pulumi-lang-nodejs="`ebsBlockDevice`" pulumi-lang-dotnet="`EbsBlockDevice`" pulumi-lang-go="`ebsBlockDevice`" pulumi-lang-python="`ebs_block_device`" pulumi-lang-yaml="`ebsBlockDevice`" pulumi-lang-java="`ebsBlockDevice`">`ebs_block_device`</span> and <span pulumi-lang-nodejs="`rootBlockDevice`" pulumi-lang-dotnet="`RootBlockDevice`" pulumi-lang-go="`rootBlockDevice`" pulumi-lang-python="`root_block_device`" pulumi-lang-yaml="`rootBlockDevice`" pulumi-lang-java="`rootBlockDevice`">`root_block_device`</span> volumes.
/// 3. **Volume tags**: Applied during creation to <span pulumi-lang-nodejs="`ebsBlockDevice`" pulumi-lang-dotnet="`EbsBlockDevice`" pulumi-lang-go="`ebsBlockDevice`" pulumi-lang-python="`ebs_block_device`" pulumi-lang-yaml="`ebsBlockDevice`" pulumi-lang-java="`ebsBlockDevice`">`ebs_block_device`</span> and <span pulumi-lang-nodejs="`rootBlockDevice`" pulumi-lang-dotnet="`RootBlockDevice`" pulumi-lang-go="`rootBlockDevice`" pulumi-lang-python="`root_block_device`" pulumi-lang-yaml="`rootBlockDevice`" pulumi-lang-java="`rootBlockDevice`">`root_block_device`</span> volumes.
/// 4. **Root block device tags**: Applied only to the <span pulumi-lang-nodejs="`rootBlockDevice`" pulumi-lang-dotnet="`RootBlockDevice`" pulumi-lang-go="`rootBlockDevice`" pulumi-lang-python="`root_block_device`" pulumi-lang-yaml="`rootBlockDevice`" pulumi-lang-java="`rootBlockDevice`">`root_block_device`</span> volume. These conflict with <span pulumi-lang-nodejs="`volumeTags`" pulumi-lang-dotnet="`VolumeTags`" pulumi-lang-go="`volumeTags`" pulumi-lang-python="`volume_tags`" pulumi-lang-yaml="`volumeTags`" pulumi-lang-java="`volumeTags`">`volume_tags`</span>.
/// 5. **EBS block device tags**: Applied only to the specific <span pulumi-lang-nodejs="`ebsBlockDevice`" pulumi-lang-dotnet="`EbsBlockDevice`" pulumi-lang-go="`ebsBlockDevice`" pulumi-lang-python="`ebs_block_device`" pulumi-lang-yaml="`ebsBlockDevice`" pulumi-lang-java="`ebsBlockDevice`">`ebs_block_device`</span> volume you configure them for and cannot be updated. These conflict with <span pulumi-lang-nodejs="`volumeTags`" pulumi-lang-dotnet="`VolumeTags`" pulumi-lang-go="`volumeTags`" pulumi-lang-python="`volume_tags`" pulumi-lang-yaml="`volumeTags`" pulumi-lang-java="`volumeTags`">`volume_tags`</span>.
///
/// Do not use <span pulumi-lang-nodejs="`volumeTags`" pulumi-lang-dotnet="`VolumeTags`" pulumi-lang-go="`volumeTags`" pulumi-lang-python="`volume_tags`" pulumi-lang-yaml="`volumeTags`" pulumi-lang-java="`volumeTags`">`volume_tags`</span> if you plan to manage block device tags outside the <span pulumi-lang-nodejs="`aws.ec2.Instance`" pulumi-lang-dotnet="`aws.ec2.Instance`" pulumi-lang-go="`ec2.Instance`" pulumi-lang-python="`ec2.Instance`" pulumi-lang-yaml="`aws.ec2.Instance`" pulumi-lang-java="`aws.ec2.Instance`">`aws.ec2.Instance`</span> configuration, such as using <span pulumi-lang-nodejs="`tags`" pulumi-lang-dotnet="`Tags`" pulumi-lang-go="`tags`" pulumi-lang-python="`tags`" pulumi-lang-yaml="`tags`" pulumi-lang-java="`tags`">`tags`</span> in an <span pulumi-lang-nodejs="`aws.ebs.Volume`" pulumi-lang-dotnet="`aws.ebs.Volume`" pulumi-lang-go="`ebs.Volume`" pulumi-lang-python="`ebs.Volume`" pulumi-lang-yaml="`aws.ebs.Volume`" pulumi-lang-java="`aws.ebs.Volume`">`aws.ebs.Volume`</span> resource attached via <span pulumi-lang-nodejs="`aws.ec2.VolumeAttachment`" pulumi-lang-dotnet="`aws.ec2.VolumeAttachment`" pulumi-lang-go="`ec2.VolumeAttachment`" pulumi-lang-python="`ec2.VolumeAttachment`" pulumi-lang-yaml="`aws.ec2.VolumeAttachment`" pulumi-lang-java="`aws.ec2.VolumeAttachment`">`aws.ec2.VolumeAttachment`</span>. Doing so will result in resource cycling and inconsistent behavior.
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> - (String) ID of the instance.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import instances using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/instance:Instance web i-12345678
/// ```
class Instance2 extends CustomResource {
  /// AMI to use for the instance. Required unless <span pulumi-lang-nodejs="`launchTemplate`" pulumi-lang-dotnet="`LaunchTemplate`" pulumi-lang-go="`launchTemplate`" pulumi-lang-python="`launch_template`" pulumi-lang-yaml="`launchTemplate`" pulumi-lang-java="`launchTemplate`">`launch_template`</span> is specified and the Launch Template specifes an AMI. If an AMI is specified in the Launch Template, setting <span pulumi-lang-nodejs="`ami`" pulumi-lang-dotnet="`Ami`" pulumi-lang-go="`ami`" pulumi-lang-python="`ami`" pulumi-lang-yaml="`ami`" pulumi-lang-java="`ami`">`ami`</span> will override the AMI specified in the Launch Template.
  late final Output<String> ami;

  /// ARN of the instance.
  late final Output<String> arn;

  /// Whether to associate a public IP address with an instance in a VPC.
  late final Output<bool> associatePublicIpAddress;

  /// AZ to start the instance in.
  late final Output<String> availabilityZone;

  /// Describes an instance's Capacity Reservation targeting option. See Capacity Reservation Specification below for more details.
  late final Output<InstanceCapacityReservationSpecification>
      capacityReservationSpecification;

  /// The CPU options for the instance. See CPU Options below for more details.
  late final Output<InstanceCpuOptions> cpuOptions;

  /// Configuration block for customizing the credit specification of the instance. See Credit Specification below for more details. This provider will only perform drift detection of its value when present in a configuration. Removing this configuration on existing instances will only stop managing it. It will not change the configuration back to the default for the instance type.
  late final Output<InstanceCreditSpecification?> creditSpecification;

  /// If true, enables [EC2 Instance Stop Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection).
  late final Output<bool> disableApiStop;

  /// If true, enables [EC2 Instance Termination Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#Using_ChangingDisableAPITermination).
  late final Output<bool> disableApiTermination;

  /// One or more configuration blocks with additional EBS block devices to attach to the instance. Block device configurations only apply on resource creation. See Block Devices below for details on attributes and drift detection. When accessing this as an attribute reference, it is a set of objects.
  late final Output<List<InstanceEbsBlockDevice>> ebsBlockDevices;

  /// If true, the launched EC2 instance will be EBS-optimized. Note that if this is not set on an instance type that is optimized by default then this will show as disabled but if the instance type is optimized by default then there is no need to set this and there is no effect to disabling it. See the [EBS Optimized section](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html) of the AWS User Guide for more information.
  late final Output<bool> ebsOptimized;

  /// Whether to assign a primary IPv6 Global Unicast Address (GUA) to the instance when launched in a dual-stack or IPv6-only subnet. A primary IPv6 address ensures a consistent IPv6 address for the instance and is automatically assigned by AWS to the ENI. Once enabled, the first IPv6 GUA becomes the primary IPv6 address and cannot be disabled. The primary IPv6 address remains until the instance is terminated or the ENI is detached. Disabling <span pulumi-lang-nodejs="`enablePrimaryIpv6`" pulumi-lang-dotnet="`EnablePrimaryIpv6`" pulumi-lang-go="`enablePrimaryIpv6`" pulumi-lang-python="`enable_primary_ipv6`" pulumi-lang-yaml="`enablePrimaryIpv6`" pulumi-lang-java="`enablePrimaryIpv6`">`enable_primary_ipv6`</span> after it has been enabled forces recreation of the instance.
  late final Output<bool> enablePrimaryIpv6;

  /// Enable Nitro Enclaves on launched instances. See Enclave Options below for more details.
  late final Output<InstanceEnclaveOptions> enclaveOptions;

  /// One or more configuration blocks to customize Ephemeral (also known as "Instance Store") volumes on the instance. See Block Devices below for details. When accessing this as an attribute reference, it is a set of objects.
  late final Output<List<InstanceEphemeralBlockDevice>> ephemeralBlockDevices;

  /// Destroys instance even if <span pulumi-lang-nodejs="`disableApiTermination`" pulumi-lang-dotnet="`DisableApiTermination`" pulumi-lang-go="`disableApiTermination`" pulumi-lang-python="`disable_api_termination`" pulumi-lang-yaml="`disableApiTermination`" pulumi-lang-java="`disableApiTermination`">`disable_api_termination`</span> or <span pulumi-lang-nodejs="`disableApiStop`" pulumi-lang-dotnet="`DisableApiStop`" pulumi-lang-go="`disableApiStop`" pulumi-lang-python="`disable_api_stop`" pulumi-lang-yaml="`disableApiStop`" pulumi-lang-java="`disableApiStop`">`disable_api_stop`</span> is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Once this parameter is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the instance or destroying the instance, this flag will not work. Additionally when importing an instance, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  late final Output<bool?> forceDestroy;

  /// If true, wait for password data to become available and retrieve it. Useful for getting the administrator password for instances running Microsoft Windows. The password data is exported to the <span pulumi-lang-nodejs="`passwordData`" pulumi-lang-dotnet="`PasswordData`" pulumi-lang-go="`passwordData`" pulumi-lang-python="`password_data`" pulumi-lang-yaml="`passwordData`" pulumi-lang-java="`passwordData`">`password_data`</span> attribute. See [GetPasswordData](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetPasswordData.html) for more information.
  late final Output<bool?> getPasswordData;

  /// If true, the launched EC2 instance will support hibernation.
  late final Output<bool?> hibernation;

  /// ID of a dedicated host that the instance will be assigned to. Use when an instance is to be launched on a specific dedicated host.
  late final Output<String> hostId;

  /// ARN of the host resource group in which to launch the instances. If you specify an ARN, omit the <span pulumi-lang-nodejs="`tenancy`" pulumi-lang-dotnet="`Tenancy`" pulumi-lang-go="`tenancy`" pulumi-lang-python="`tenancy`" pulumi-lang-yaml="`tenancy`" pulumi-lang-java="`tenancy`">`tenancy`</span> parameter or set it to <span pulumi-lang-nodejs="`host`" pulumi-lang-dotnet="`Host`" pulumi-lang-go="`host`" pulumi-lang-python="`host`" pulumi-lang-yaml="`host`" pulumi-lang-java="`host`">`host`</span>.
  late final Output<String> hostResourceGroupArn;

  /// IAM Instance Profile to launch the instance with. Specified as the name of the Instance Profile. Ensure your credentials have the correct permission to assign the instance profile according to the [EC2 documentation](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2.html#roles-usingrole-ec2instance-permissions), notably `iam:PassRole`.
  late final Output<String> iamInstanceProfile;

  /// Shutdown behavior for the instance. Amazon defaults this to <span pulumi-lang-nodejs="`stop`" pulumi-lang-dotnet="`Stop`" pulumi-lang-go="`stop`" pulumi-lang-python="`stop`" pulumi-lang-yaml="`stop`" pulumi-lang-java="`stop`">`stop`</span> for EBS-backed instances and <span pulumi-lang-nodejs="`terminate`" pulumi-lang-dotnet="`Terminate`" pulumi-lang-go="`terminate`" pulumi-lang-python="`terminate`" pulumi-lang-yaml="`terminate`" pulumi-lang-java="`terminate`">`terminate`</span> for instance-store instances. Cannot be set on instance-store instances. See [Shutdown Behavior](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#Using_ChangingInstanceInitiatedShutdownBehavior) for more information.
  late final Output<String> instanceInitiatedShutdownBehavior;

  /// Indicates whether this is a Spot Instance or a Scheduled Instance.
  late final Output<String> instanceLifecycle;

  /// Describes the market (purchasing) option for the instances. See Market Options below for details on attributes.
  late final Output<InstanceInstanceMarketOptions> instanceMarketOptions;

  /// State of the instance. One of: <span pulumi-lang-nodejs="`pending`" pulumi-lang-dotnet="`Pending`" pulumi-lang-go="`pending`" pulumi-lang-python="`pending`" pulumi-lang-yaml="`pending`" pulumi-lang-java="`pending`">`pending`</span>, <span pulumi-lang-nodejs="`running`" pulumi-lang-dotnet="`Running`" pulumi-lang-go="`running`" pulumi-lang-python="`running`" pulumi-lang-yaml="`running`" pulumi-lang-java="`running`">`running`</span>, `shutting-down`, <span pulumi-lang-nodejs="`terminated`" pulumi-lang-dotnet="`Terminated`" pulumi-lang-go="`terminated`" pulumi-lang-python="`terminated`" pulumi-lang-yaml="`terminated`" pulumi-lang-java="`terminated`">`terminated`</span>, <span pulumi-lang-nodejs="`stopping`" pulumi-lang-dotnet="`Stopping`" pulumi-lang-go="`stopping`" pulumi-lang-python="`stopping`" pulumi-lang-yaml="`stopping`" pulumi-lang-java="`stopping`">`stopping`</span>, <span pulumi-lang-nodejs="`stopped`" pulumi-lang-dotnet="`Stopped`" pulumi-lang-go="`stopped`" pulumi-lang-python="`stopped`" pulumi-lang-yaml="`stopped`" pulumi-lang-java="`stopped`">`stopped`</span>. See [Instance Lifecycle](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html) for more information.
  late final Output<String> instanceState;

  /// Instance type to use for the instance. Required unless <span pulumi-lang-nodejs="`launchTemplate`" pulumi-lang-dotnet="`LaunchTemplate`" pulumi-lang-go="`launchTemplate`" pulumi-lang-python="`launch_template`" pulumi-lang-yaml="`launchTemplate`" pulumi-lang-java="`launchTemplate`">`launch_template`</span> is specified and the Launch Template specifies an instance type. If an instance type is specified in the Launch Template, setting <span pulumi-lang-nodejs="`instanceType`" pulumi-lang-dotnet="`InstanceType`" pulumi-lang-go="`instanceType`" pulumi-lang-python="`instance_type`" pulumi-lang-yaml="`instanceType`" pulumi-lang-java="`instanceType`">`instance_type`</span> will override the instance type specified in the Launch Template. Updates to this field will trigger a stop/start of the EC2 instance.
  late final Output<String> instanceType;

  /// Number of IPv6 addresses to associate with the primary network interface. Amazon EC2 chooses the IPv6 addresses from the range of your subnet.
  late final Output<int> ipv6AddressCount;

  /// Specify one or more IPv6 addresses from the range of the subnet to associate with the primary network interface
  late final Output<List<String>> ipv6Addresses;

  /// Key name of the Key Pair to use for the instance; which can be managed using the <span pulumi-lang-nodejs="`aws.ec2.KeyPair`" pulumi-lang-dotnet="`aws.ec2.KeyPair`" pulumi-lang-go="`ec2.KeyPair`" pulumi-lang-python="`ec2.KeyPair`" pulumi-lang-yaml="`aws.ec2.KeyPair`" pulumi-lang-java="`aws.ec2.KeyPair`">`aws.ec2.KeyPair`</span> resource.
  late final Output<String> keyName;

  /// Specifies a Launch Template to configure the instance. Parameters configured on this resource will override the corresponding parameters in the Launch Template. See Launch Template Specification below for more details.
  late final Output<InstanceLaunchTemplate?> launchTemplate;

  /// Maintenance and recovery options for the instance. See Maintenance Options below for more details.
  late final Output<InstanceMaintenanceOptions> maintenanceOptions;

  /// Customize the metadata options of the instance. See Metadata Options below for more details.
  late final Output<InstanceMetadataOptions> metadataOptions;

  /// If true, the launched EC2 instance will have detailed monitoring enabled. (Available since v0.6.0)
  late final Output<bool> monitoring;

  /// Customize network interfaces to be attached at instance boot time. See Network Interfaces below for more details.
  late final Output<List<InstanceNetworkInterface>> networkInterfaces;

  /// ARN of the Outpost the instance is assigned to.
  late final Output<String> outpostArn;

  /// Base-64 encoded encrypted password data for the instance. Useful for getting the administrator password for instances running Microsoft Windows. This attribute is only exported if <span pulumi-lang-nodejs="`getPasswordData`" pulumi-lang-dotnet="`GetPasswordData`" pulumi-lang-go="`getPasswordData`" pulumi-lang-python="`get_password_data`" pulumi-lang-yaml="`getPasswordData`" pulumi-lang-java="`getPasswordData`">`get_password_data`</span> is true. Note that this encrypted value will be stored in the state file, as with all exported attributes. See [GetPasswordData](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetPasswordData.html) for more information.
  late final Output<String> passwordData;

  /// Placement Group to start the instance in. Conflicts with <span pulumi-lang-nodejs="`placementGroupId`" pulumi-lang-dotnet="`PlacementGroupId`" pulumi-lang-go="`placementGroupId`" pulumi-lang-python="`placement_group_id`" pulumi-lang-yaml="`placementGroupId`" pulumi-lang-java="`placementGroupId`">`placement_group_id`</span>.
  late final Output<String> placementGroup;

  /// Placement Group ID to start the instance in. Conflicts with <span pulumi-lang-nodejs="`placementGroup`" pulumi-lang-dotnet="`PlacementGroup`" pulumi-lang-go="`placementGroup`" pulumi-lang-python="`placement_group`" pulumi-lang-yaml="`placementGroup`" pulumi-lang-java="`placementGroup`">`placement_group`</span>.
  late final Output<String> placementGroupId;

  /// Number of the partition the instance is in. Valid only if the <span pulumi-lang-nodejs="`aws.ec2.PlacementGroup`" pulumi-lang-dotnet="`aws.ec2.PlacementGroup`" pulumi-lang-go="`ec2.PlacementGroup`" pulumi-lang-python="`ec2.PlacementGroup`" pulumi-lang-yaml="`aws.ec2.PlacementGroup`" pulumi-lang-java="`aws.ec2.PlacementGroup`">`aws.ec2.PlacementGroup`</span> resource's <span pulumi-lang-nodejs="`strategy`" pulumi-lang-dotnet="`Strategy`" pulumi-lang-go="`strategy`" pulumi-lang-python="`strategy`" pulumi-lang-yaml="`strategy`" pulumi-lang-java="`strategy`">`strategy`</span> argument is set to `"partition"`.
  late final Output<int> placementPartitionNumber;

  /// The primary network interface. See Primary Network Interface below.
  late final Output<InstancePrimaryNetworkInterface> primaryNetworkInterface;

  /// ID of the instance's primary network interface.
  late final Output<String> primaryNetworkInterfaceId;

  /// Private DNS name assigned to the instance. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC.
  late final Output<String> privateDns;

  /// Options for the instance hostname. The default values are inherited from the subnet. See Private DNS Name Options below for more details.
  late final Output<InstancePrivateDnsNameOptions> privateDnsNameOptions;

  /// Private IP address to associate with the instance in a VPC.
  late final Output<String> privateIp;

  /// Public DNS name assigned to the instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC.
  late final Output<String> publicDns;

  /// Public IP address assigned to the instance, if applicable. **NOTE**: If you are using an <span pulumi-lang-nodejs="`aws.ec2.Eip`" pulumi-lang-dotnet="`aws.ec2.Eip`" pulumi-lang-go="`ec2.Eip`" pulumi-lang-python="`ec2.Eip`" pulumi-lang-yaml="`aws.ec2.Eip`" pulumi-lang-java="`aws.ec2.Eip`">`aws.ec2.Eip`</span> with your instance, you should refer to the EIP's address directly and not use <span pulumi-lang-nodejs="`publicIp`" pulumi-lang-dotnet="`PublicIp`" pulumi-lang-go="`publicIp`" pulumi-lang-python="`public_ip`" pulumi-lang-yaml="`publicIp`" pulumi-lang-java="`publicIp`">`public_ip`</span> as this field will change after the EIP is attached.
  late final Output<String> publicIp;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block to customize details about the root block device of the instance. See Block Devices below for details. When accessing this as an attribute reference, it is a list containing one object.
  late final Output<InstanceRootBlockDevice> rootBlockDevice;

  /// One or more secondary network interfaces to attach to the instance at launch time. See Secondary Network Interface below for more details.
  late final Output<List<InstanceSecondaryNetworkInterface>>
      secondaryNetworkInterfaces;

  /// List of secondary private IPv4 addresses to assign to the instance's primary network interface (eth0) in a VPC. Can only be assigned to the primary network interface (eth0) attached at instance creation, not a pre-existing network interface i.e., referenced in a <span pulumi-lang-nodejs="`networkInterface`" pulumi-lang-dotnet="`NetworkInterface`" pulumi-lang-go="`networkInterface`" pulumi-lang-python="`network_interface`" pulumi-lang-yaml="`networkInterface`" pulumi-lang-java="`networkInterface`">`network_interface`</span> block. Refer to the [Elastic network interfaces documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI) to see the maximum number of private IP addresses allowed per instance type.
  late final Output<List<String>> secondaryPrivateIps;

  /// List of security group names to associate with.
  ///
  /// > **NOTE:** If you are creating Instances in a VPC, use <span pulumi-lang-nodejs="`vpcSecurityGroupIds`" pulumi-lang-dotnet="`VpcSecurityGroupIds`" pulumi-lang-go="`vpcSecurityGroupIds`" pulumi-lang-python="`vpc_security_group_ids`" pulumi-lang-yaml="`vpcSecurityGroupIds`" pulumi-lang-java="`vpcSecurityGroupIds`">`vpc_security_group_ids`</span> instead.
  late final Output<List<String>> securityGroups;

  /// Controls if traffic is routed to the instance when the destination address does not match the instance. Used for NAT or VPNs. Defaults true.
  late final Output<bool?> sourceDestCheck;

  /// If the request is a Spot Instance request, the ID of the request.
  late final Output<String> spotInstanceRequestId;

  /// VPC Subnet ID to launch in.
  late final Output<String> subnetId;

  /// Map of tags to assign to the resource. Note that these tags apply to the instance and not block storage devices. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Tenancy of the instance (if the instance is running in a VPC). An instance with a tenancy of <span pulumi-lang-nodejs="`dedicated`" pulumi-lang-dotnet="`Dedicated`" pulumi-lang-go="`dedicated`" pulumi-lang-python="`dedicated`" pulumi-lang-yaml="`dedicated`" pulumi-lang-java="`dedicated`">`dedicated`</span> runs on single-tenant hardware. The <span pulumi-lang-nodejs="`host`" pulumi-lang-dotnet="`Host`" pulumi-lang-go="`host`" pulumi-lang-python="`host`" pulumi-lang-yaml="`host`" pulumi-lang-java="`host`">`host`</span> tenancy is not supported for the import-instance command. Valid values are <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>, <span pulumi-lang-nodejs="`dedicated`" pulumi-lang-dotnet="`Dedicated`" pulumi-lang-go="`dedicated`" pulumi-lang-python="`dedicated`" pulumi-lang-yaml="`dedicated`" pulumi-lang-java="`dedicated`">`dedicated`</span>, and <span pulumi-lang-nodejs="`host`" pulumi-lang-dotnet="`Host`" pulumi-lang-go="`host`" pulumi-lang-python="`host`" pulumi-lang-yaml="`host`" pulumi-lang-java="`host`">`host`</span>.
  late final Output<String> tenancy;

  /// User data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see <span pulumi-lang-nodejs="`userDataBase64`" pulumi-lang-dotnet="`UserDataBase64`" pulumi-lang-go="`userDataBase64`" pulumi-lang-python="`user_data_base64`" pulumi-lang-yaml="`userDataBase64`" pulumi-lang-java="`userDataBase64`">`user_data_base64`</span> instead. Updates to this field will trigger a stop/start of the EC2 instance by default. If the <span pulumi-lang-nodejs="`userDataReplaceOnChange`" pulumi-lang-dotnet="`UserDataReplaceOnChange`" pulumi-lang-go="`userDataReplaceOnChange`" pulumi-lang-python="`user_data_replace_on_change`" pulumi-lang-yaml="`userDataReplaceOnChange`" pulumi-lang-java="`userDataReplaceOnChange`">`user_data_replace_on_change`</span> is set then updates to this field will trigger a destroy and recreate of the EC2 instance.
  late final Output<String?> userData;

  /// Can be used instead of <span pulumi-lang-nodejs="`userData`" pulumi-lang-dotnet="`UserData`" pulumi-lang-go="`userData`" pulumi-lang-python="`user_data`" pulumi-lang-yaml="`userData`" pulumi-lang-java="`userData`">`user_data`</span> to pass base64-encoded binary data directly. Use this instead of <span pulumi-lang-nodejs="`userData`" pulumi-lang-dotnet="`UserData`" pulumi-lang-go="`userData`" pulumi-lang-python="`user_data`" pulumi-lang-yaml="`userData`" pulumi-lang-java="`userData`">`user_data`</span> whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption. Updates to this field will trigger a stop/start of the EC2 instance by default. If the <span pulumi-lang-nodejs="`userDataReplaceOnChange`" pulumi-lang-dotnet="`UserDataReplaceOnChange`" pulumi-lang-go="`userDataReplaceOnChange`" pulumi-lang-python="`user_data_replace_on_change`" pulumi-lang-yaml="`userDataReplaceOnChange`" pulumi-lang-java="`userDataReplaceOnChange`">`user_data_replace_on_change`</span> is set then updates to this field will trigger a destroy and recreate of the EC2 instance.
  late final Output<String> userDataBase64;

  /// When used in combination with <span pulumi-lang-nodejs="`userData`" pulumi-lang-dotnet="`UserData`" pulumi-lang-go="`userData`" pulumi-lang-python="`user_data`" pulumi-lang-yaml="`userData`" pulumi-lang-java="`userData`">`user_data`</span> or <span pulumi-lang-nodejs="`userDataBase64`" pulumi-lang-dotnet="`UserDataBase64`" pulumi-lang-go="`userDataBase64`" pulumi-lang-python="`user_data_base64`" pulumi-lang-yaml="`userDataBase64`" pulumi-lang-java="`userDataBase64`">`user_data_base64`</span> will trigger a destroy and recreate of the EC2 instance when set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> if not set.
  late final Output<bool?> userDataReplaceOnChange;

  /// Map of tags to assign, at instance-creation time, to root and EBS volumes.
  ///
  /// > **NOTE:** Do not use <span pulumi-lang-nodejs="`volumeTags`" pulumi-lang-dotnet="`VolumeTags`" pulumi-lang-go="`volumeTags`" pulumi-lang-python="`volume_tags`" pulumi-lang-yaml="`volumeTags`" pulumi-lang-java="`volumeTags`">`volume_tags`</span> if you plan to manage block device tags outside the <span pulumi-lang-nodejs="`aws.ec2.Instance`" pulumi-lang-dotnet="`aws.ec2.Instance`" pulumi-lang-go="`ec2.Instance`" pulumi-lang-python="`ec2.Instance`" pulumi-lang-yaml="`aws.ec2.Instance`" pulumi-lang-java="`aws.ec2.Instance`">`aws.ec2.Instance`</span> configuration, such as using <span pulumi-lang-nodejs="`tags`" pulumi-lang-dotnet="`Tags`" pulumi-lang-go="`tags`" pulumi-lang-python="`tags`" pulumi-lang-yaml="`tags`" pulumi-lang-java="`tags`">`tags`</span> in an <span pulumi-lang-nodejs="`aws.ebs.Volume`" pulumi-lang-dotnet="`aws.ebs.Volume`" pulumi-lang-go="`ebs.Volume`" pulumi-lang-python="`ebs.Volume`" pulumi-lang-yaml="`aws.ebs.Volume`" pulumi-lang-java="`aws.ebs.Volume`">`aws.ebs.Volume`</span> resource attached via <span pulumi-lang-nodejs="`aws.ec2.VolumeAttachment`" pulumi-lang-dotnet="`aws.ec2.VolumeAttachment`" pulumi-lang-go="`ec2.VolumeAttachment`" pulumi-lang-python="`ec2.VolumeAttachment`" pulumi-lang-yaml="`aws.ec2.VolumeAttachment`" pulumi-lang-java="`aws.ec2.VolumeAttachment`">`aws.ec2.VolumeAttachment`</span>. Doing so will result in resource cycling and inconsistent behavior.
  late final Output<Map<String, String>?> volumeTags;

  /// List of security group IDs to associate with.
  late final Output<List<String>> vpcSecurityGroupIds;

  Instance2(
    String name, {
    InstanceArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/instance:Instance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.ami = registerOutput<String>('ami');
    this.arn = registerOutput<String>('arn');
    this.associatePublicIpAddress =
        registerOutput<bool>('associatePublicIpAddress');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.capacityReservationSpecification =
        registerOutput<InstanceCapacityReservationSpecification>(
            'capacityReservationSpecification');
    this.cpuOptions = registerOutput<InstanceCpuOptions>('cpuOptions');
    this.creditSpecification =
        registerOutput<InstanceCreditSpecification?>('creditSpecification');
    this.disableApiStop = registerOutput<bool>('disableApiStop');
    this.disableApiTermination = registerOutput<bool>('disableApiTermination');
    this.ebsBlockDevices =
        registerOutput<List<InstanceEbsBlockDevice>>('ebsBlockDevices');
    this.ebsOptimized = registerOutput<bool>('ebsOptimized');
    this.enablePrimaryIpv6 = registerOutput<bool>('enablePrimaryIpv6');
    this.enclaveOptions =
        registerOutput<InstanceEnclaveOptions>('enclaveOptions');
    this.ephemeralBlockDevices =
        registerOutput<List<InstanceEphemeralBlockDevice>>(
            'ephemeralBlockDevices');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.getPasswordData = registerOutput<bool?>('getPasswordData');
    this.hibernation = registerOutput<bool?>('hibernation');
    this.hostId = registerOutput<String>('hostId');
    this.hostResourceGroupArn = registerOutput<String>('hostResourceGroupArn');
    this.iamInstanceProfile = registerOutput<String>('iamInstanceProfile');
    this.instanceInitiatedShutdownBehavior =
        registerOutput<String>('instanceInitiatedShutdownBehavior');
    this.instanceLifecycle = registerOutput<String>('instanceLifecycle');
    this.instanceMarketOptions =
        registerOutput<InstanceInstanceMarketOptions>('instanceMarketOptions');
    this.instanceState = registerOutput<String>('instanceState');
    this.instanceType = registerOutput<String>('instanceType');
    this.ipv6AddressCount = registerOutput<int>('ipv6AddressCount');
    this.ipv6Addresses = registerOutput<List<String>>('ipv6Addresses');
    this.keyName = registerOutput<String>('keyName');
    this.launchTemplate =
        registerOutput<InstanceLaunchTemplate?>('launchTemplate');
    this.maintenanceOptions =
        registerOutput<InstanceMaintenanceOptions>('maintenanceOptions');
    this.metadataOptions =
        registerOutput<InstanceMetadataOptions>('metadataOptions');
    this.monitoring = registerOutput<bool>('monitoring');
    this.networkInterfaces =
        registerOutput<List<InstanceNetworkInterface>>('networkInterfaces');
    this.outpostArn = registerOutput<String>('outpostArn');
    this.passwordData = registerOutput<String>('passwordData');
    this.placementGroup = registerOutput<String>('placementGroup');
    this.placementGroupId = registerOutput<String>('placementGroupId');
    this.placementPartitionNumber =
        registerOutput<int>('placementPartitionNumber');
    this.primaryNetworkInterface =
        registerOutput<InstancePrimaryNetworkInterface>(
            'primaryNetworkInterface');
    this.primaryNetworkInterfaceId =
        registerOutput<String>('primaryNetworkInterfaceId');
    this.privateDns = registerOutput<String>('privateDns');
    this.privateDnsNameOptions =
        registerOutput<InstancePrivateDnsNameOptions>('privateDnsNameOptions');
    this.privateIp = registerOutput<String>('privateIp');
    this.publicDns = registerOutput<String>('publicDns');
    this.publicIp = registerOutput<String>('publicIp');
    this.region = registerOutput<String>('region');
    this.rootBlockDevice =
        registerOutput<InstanceRootBlockDevice>('rootBlockDevice');
    this.secondaryNetworkInterfaces =
        registerOutput<List<InstanceSecondaryNetworkInterface>>(
            'secondaryNetworkInterfaces');
    this.secondaryPrivateIps =
        registerOutput<List<String>>('secondaryPrivateIps');
    this.securityGroups = registerOutput<List<String>>('securityGroups');
    this.sourceDestCheck = registerOutput<bool?>('sourceDestCheck');
    this.spotInstanceRequestId =
        registerOutput<String>('spotInstanceRequestId');
    this.subnetId = registerOutput<String>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tenancy = registerOutput<String>('tenancy');
    this.userData = registerOutput<String?>('userData');
    this.userDataBase64 = registerOutput<String>('userDataBase64');
    this.userDataReplaceOnChange =
        registerOutput<bool?>('userDataReplaceOnChange');
    this.volumeTags = registerOutput<Map<String, String>?>('volumeTags');
    this.vpcSecurityGroupIds =
        registerOutput<List<String>>('vpcSecurityGroupIds');
  }
}
