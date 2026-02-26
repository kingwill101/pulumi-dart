import 'package:pulumi/pulumi.dart';
import '../vpc_endpoint_dns_entry/vpc_endpoint_dns_entry.dart';
import '../vpc_endpoint_dns_options/vpc_endpoint_dns_options.dart';
import '../vpc_endpoint_subnet_configuration/vpc_endpoint_subnet_configuration.dart';
import 'vpc_endpoint_args.dart';

/// Provides a VPC Endpoint resource.
///
/// > **NOTE on VPC Endpoints and VPC Endpoint Associations:** The provider provides both standalone VPC Endpoint Associations for
/// Route Tables - (an association between a VPC endpoint and a single <span pulumi-lang-nodejs="`routeTableId`" pulumi-lang-dotnet="`RouteTableId`" pulumi-lang-go="`routeTableId`" pulumi-lang-python="`route_table_id`" pulumi-lang-yaml="`routeTableId`" pulumi-lang-java="`routeTableId`">`route_table_id`</span>),
/// Security Groups - (an association between a VPC endpoint and a single <span pulumi-lang-nodejs="`securityGroupId`" pulumi-lang-dotnet="`SecurityGroupId`" pulumi-lang-go="`securityGroupId`" pulumi-lang-python="`security_group_id`" pulumi-lang-yaml="`securityGroupId`" pulumi-lang-java="`securityGroupId`">`security_group_id`</span>),
/// and Subnets - (an association between a VPC endpoint and a single <span pulumi-lang-nodejs="`subnetId`" pulumi-lang-dotnet="`SubnetId`" pulumi-lang-go="`subnetId`" pulumi-lang-python="`subnet_id`" pulumi-lang-yaml="`subnetId`" pulumi-lang-java="`subnetId`">`subnet_id`</span>) and
/// a VPC Endpoint resource with <span pulumi-lang-nodejs="`routeTableIds`" pulumi-lang-dotnet="`RouteTableIds`" pulumi-lang-go="`routeTableIds`" pulumi-lang-python="`route_table_ids`" pulumi-lang-yaml="`routeTableIds`" pulumi-lang-java="`routeTableIds`">`route_table_ids`</span> and <span pulumi-lang-nodejs="`subnetIds`" pulumi-lang-dotnet="`SubnetIds`" pulumi-lang-go="`subnetIds`" pulumi-lang-python="`subnet_ids`" pulumi-lang-yaml="`subnetIds`" pulumi-lang-java="`subnetIds`">`subnet_ids`</span> attributes.
/// Do not use the same resource ID in both a VPC Endpoint resource and a VPC Endpoint Association resource.
/// Doing so will cause a conflict of associations and will overwrite the association.
///
/// ## Example Usage
///
/// ### Basic
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const s3 = new aws.ec2.VpcEndpoint("s3", {
/// vpcId: main.id,
/// serviceName: "com.amazonaws.us-west-2.s3",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// s3 = aws.ec2.VpcEndpoint("s3",
/// vpc_id=main["id"],
/// service_name="com.amazonaws.us-west-2.s3")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var s3 = new Aws.Ec2.VpcEndpoint("s3", new()
/// {
/// VpcId = main.Id,
/// ServiceName = "com.amazonaws.us-west-2.s3",
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
/// _, err := ec2.NewVpcEndpoint(ctx, "s3", &ec2.VpcEndpointArgs{
/// VpcId:       pulumi.Any(main.Id),
/// ServiceName: pulumi.String("com.amazonaws.us-west-2.s3"),
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
/// import com.pulumi.aws.ec2.VpcEndpoint;
/// import com.pulumi.aws.ec2.VpcEndpointArgs;
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
/// var s3 = new VpcEndpoint("s3", VpcEndpointArgs.builder()
/// .vpcId(main.id())
/// .serviceName("com.amazonaws.us-west-2.s3")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// s3:
/// type: aws:ec2:VpcEndpoint
/// properties:
/// vpcId: ${main.id}
/// serviceName: com.amazonaws.us-west-2.s3
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Basic w/ Tags
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const s3 = new aws.ec2.VpcEndpoint("s3", {
/// vpcId: main.id,
/// serviceName: "com.amazonaws.us-west-2.s3",
/// tags: {
/// Environment: "test",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// s3 = aws.ec2.VpcEndpoint("s3",
/// vpc_id=main["id"],
/// service_name="com.amazonaws.us-west-2.s3",
/// tags={
/// "Environment": "test",
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
/// var s3 = new Aws.Ec2.VpcEndpoint("s3", new()
/// {
/// VpcId = main.Id,
/// ServiceName = "com.amazonaws.us-west-2.s3",
/// Tags =
/// {
/// { "Environment", "test" },
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
/// _, err := ec2.NewVpcEndpoint(ctx, "s3", &ec2.VpcEndpointArgs{
/// VpcId:       pulumi.Any(main.Id),
/// ServiceName: pulumi.String("com.amazonaws.us-west-2.s3"),
/// Tags: pulumi.StringMap{
/// "Environment": pulumi.String("test"),
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
/// import com.pulumi.aws.ec2.VpcEndpoint;
/// import com.pulumi.aws.ec2.VpcEndpointArgs;
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
/// var s3 = new VpcEndpoint("s3", VpcEndpointArgs.builder()
/// .vpcId(main.id())
/// .serviceName("com.amazonaws.us-west-2.s3")
/// .tags(Map.of("Environment", "test"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// s3:
/// type: aws:ec2:VpcEndpoint
/// properties:
/// vpcId: ${main.id}
/// serviceName: com.amazonaws.us-west-2.s3
/// tags:
/// Environment: test
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Cross-region enabled AWS services
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const s3 = new aws.ec2.VpcEndpoint("s3", {
/// region: "us-west-2",
/// vpcId: main.id,
/// serviceName: "com.amazonaws.us-east-2.s3",
/// serviceRegion: "us-east-2",
/// tags: {
/// Environment: "test",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// s3 = aws.ec2.VpcEndpoint("s3",
/// region="us-west-2",
/// vpc_id=main["id"],
/// service_name="com.amazonaws.us-east-2.s3",
/// service_region="us-east-2",
/// tags={
/// "Environment": "test",
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
/// var s3 = new Aws.Ec2.VpcEndpoint("s3", new()
/// {
/// Region = "us-west-2",
/// VpcId = main.Id,
/// ServiceName = "com.amazonaws.us-east-2.s3",
/// ServiceRegion = "us-east-2",
/// Tags =
/// {
/// { "Environment", "test" },
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
/// _, err := ec2.NewVpcEndpoint(ctx, "s3", &ec2.VpcEndpointArgs{
/// Region:        pulumi.String("us-west-2"),
/// VpcId:         pulumi.Any(main.Id),
/// ServiceName:   pulumi.String("com.amazonaws.us-east-2.s3"),
/// ServiceRegion: pulumi.String("us-east-2"),
/// Tags: pulumi.StringMap{
/// "Environment": pulumi.String("test"),
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
/// import com.pulumi.aws.ec2.VpcEndpoint;
/// import com.pulumi.aws.ec2.VpcEndpointArgs;
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
/// var s3 = new VpcEndpoint("s3", VpcEndpointArgs.builder()
/// .region("us-west-2")
/// .vpcId(main.id())
/// .serviceName("com.amazonaws.us-east-2.s3")
/// .serviceRegion("us-east-2")
/// .tags(Map.of("Environment", "test"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// s3:
/// type: aws:ec2:VpcEndpoint
/// properties:
/// region: us-west-2
/// vpcId: ${main.id}
/// serviceName: com.amazonaws.us-east-2.s3
/// serviceRegion: us-east-2
/// tags:
/// Environment: test
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Interface Endpoint Type
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ec2 = new aws.ec2.VpcEndpoint("ec2", {
/// vpcId: main.id,
/// serviceName: "com.amazonaws.us-west-2.ec2",
/// vpcEndpointType: "Interface",
/// securityGroupIds: [sg1.id],
/// privateDnsEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ec2 = aws.ec2.VpcEndpoint("ec2",
/// vpc_id=main["id"],
/// service_name="com.amazonaws.us-west-2.ec2",
/// vpc_endpoint_type="Interface",
/// security_group_ids=[sg1["id"]],
/// private_dns_enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var ec2 = new Aws.Ec2.VpcEndpoint("ec2", new()
/// {
/// VpcId = main.Id,
/// ServiceName = "com.amazonaws.us-west-2.ec2",
/// VpcEndpointType = "Interface",
/// SecurityGroupIds = new[]
/// {
/// sg1.Id,
/// },
/// PrivateDnsEnabled = true,
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
/// _, err := ec2.NewVpcEndpoint(ctx, "ec2", &ec2.VpcEndpointArgs{
/// VpcId:           pulumi.Any(main.Id),
/// ServiceName:     pulumi.String("com.amazonaws.us-west-2.ec2"),
/// VpcEndpointType: pulumi.String("Interface"),
/// SecurityGroupIds: pulumi.StringArray{
/// sg1.Id,
/// },
/// PrivateDnsEnabled: pulumi.Bool(true),
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
/// import com.pulumi.aws.ec2.VpcEndpoint;
/// import com.pulumi.aws.ec2.VpcEndpointArgs;
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
/// var ec2 = new VpcEndpoint("ec2", VpcEndpointArgs.builder()
/// .vpcId(main.id())
/// .serviceName("com.amazonaws.us-west-2.ec2")
/// .vpcEndpointType("Interface")
/// .securityGroupIds(sg1.id())
/// .privateDnsEnabled(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// ec2:
/// type: aws:ec2:VpcEndpoint
/// properties:
/// vpcId: ${main.id}
/// serviceName: com.amazonaws.us-west-2.ec2
/// vpcEndpointType: Interface
/// securityGroupIds:
/// - ${sg1.id}
/// privateDnsEnabled: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Interface Endpoint Type with User-Defined IP Address
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ec2 = new aws.ec2.VpcEndpoint("ec2", {
/// vpcId: example.id,
/// serviceName: "com.amazonaws.us-west-2.ec2",
/// vpcEndpointType: "Interface",
/// subnetConfigurations: [
/// {
/// ipv4: "10.0.1.10",
/// subnetId: example1.id,
/// },
/// {
/// ipv4: "10.0.2.10",
/// subnetId: example2.id,
/// },
/// ],
/// subnetIds: [
/// example1.id,
/// example2.id,
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ec2 = aws.ec2.VpcEndpoint("ec2",
/// vpc_id=example["id"],
/// service_name="com.amazonaws.us-west-2.ec2",
/// vpc_endpoint_type="Interface",
/// subnet_configurations=[
/// {
/// "ipv4": "10.0.1.10",
/// "subnet_id": example1["id"],
/// },
/// {
/// "ipv4": "10.0.2.10",
/// "subnet_id": example2["id"],
/// },
/// ],
/// subnet_ids=[
/// example1["id"],
/// example2["id"],
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var ec2 = new Aws.Ec2.VpcEndpoint("ec2", new()
/// {
/// VpcId = example.Id,
/// ServiceName = "com.amazonaws.us-west-2.ec2",
/// VpcEndpointType = "Interface",
/// SubnetConfigurations = new[]
/// {
/// new Aws.Ec2.Inputs.VpcEndpointSubnetConfigurationArgs
/// {
/// Ipv4 = "10.0.1.10",
/// SubnetId = example1.Id,
/// },
/// new Aws.Ec2.Inputs.VpcEndpointSubnetConfigurationArgs
/// {
/// Ipv4 = "10.0.2.10",
/// SubnetId = example2.Id,
/// },
/// },
/// SubnetIds = new[]
/// {
/// example1.Id,
/// example2.Id,
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
/// _, err := ec2.NewVpcEndpoint(ctx, "ec2", &ec2.VpcEndpointArgs{
/// VpcId:           pulumi.Any(example.Id),
/// ServiceName:     pulumi.String("com.amazonaws.us-west-2.ec2"),
/// VpcEndpointType: pulumi.String("Interface"),
/// SubnetConfigurations: ec2.VpcEndpointSubnetConfigurationArray{
/// &ec2.VpcEndpointSubnetConfigurationArgs{
/// Ipv4:     pulumi.String("10.0.1.10"),
/// SubnetId: pulumi.Any(example1.Id),
/// },
/// &ec2.VpcEndpointSubnetConfigurationArgs{
/// Ipv4:     pulumi.String("10.0.2.10"),
/// SubnetId: pulumi.Any(example2.Id),
/// },
/// },
/// SubnetIds: pulumi.StringArray{
/// example1.Id,
/// example2.Id,
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
/// import com.pulumi.aws.ec2.VpcEndpoint;
/// import com.pulumi.aws.ec2.VpcEndpointArgs;
/// import com.pulumi.aws.ec2.inputs.VpcEndpointSubnetConfigurationArgs;
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
/// var ec2 = new VpcEndpoint("ec2", VpcEndpointArgs.builder()
/// .vpcId(example.id())
/// .serviceName("com.amazonaws.us-west-2.ec2")
/// .vpcEndpointType("Interface")
/// .subnetConfigurations(
/// VpcEndpointSubnetConfigurationArgs.builder()
/// .ipv4("10.0.1.10")
/// .subnetId(example1.id())
/// .build(),
/// VpcEndpointSubnetConfigurationArgs.builder()
/// .ipv4("10.0.2.10")
/// .subnetId(example2.id())
/// .build())
/// .subnetIds(
/// example1.id(),
/// example2.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// ec2:
/// type: aws:ec2:VpcEndpoint
/// properties:
/// vpcId: ${example.id}
/// serviceName: com.amazonaws.us-west-2.ec2
/// vpcEndpointType: Interface
/// subnetConfigurations:
/// - ipv4: 10.0.1.10
/// subnetId: ${example1.id}
/// - ipv4: 10.0.2.10
/// subnetId: ${example2.id}
/// subnetIds:
/// - ${example1.id}
/// - ${example2.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Gateway Load Balancer Endpoint Type
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const example = new aws.ec2.VpcEndpointService("example", {
/// acceptanceRequired: false,
/// allowedPrincipals: [current.then(current => current.arn)],
/// gatewayLoadBalancerArns: [exampleAwsLb.arn],
/// });
/// const exampleVpcEndpoint = new aws.ec2.VpcEndpoint("example", {
/// serviceName: example.serviceName,
/// subnetIds: [exampleAwsSubnet.id],
/// vpcEndpointType: example.serviceType,
/// vpcId: exampleAwsVpc.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.ec2.VpcEndpointService("example",
/// acceptance_required=False,
/// allowed_principals=[current.arn],
/// gateway_load_balancer_arns=[example_aws_lb["arn"]])
/// example_vpc_endpoint = aws.ec2.VpcEndpoint("example",
/// service_name=example.service_name,
/// subnet_ids=[example_aws_subnet["id"]],
/// vpc_endpoint_type=example.service_type,
/// vpc_id=example_aws_vpc["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Aws.GetCallerIdentity.Invoke();
///
/// var example = new Aws.Ec2.VpcEndpointService("example", new()
/// {
/// AcceptanceRequired = false,
/// AllowedPrincipals = new[]
/// {
/// current.Apply(getCallerIdentityResult => getCallerIdentityResult.Arn),
/// },
/// GatewayLoadBalancerArns = new[]
/// {
/// exampleAwsLb.Arn,
/// },
/// });
///
/// var exampleVpcEndpoint = new Aws.Ec2.VpcEndpoint("example", new()
/// {
/// ServiceName = example.ServiceName,
/// SubnetIds = new[]
/// {
/// exampleAwsSubnet.Id,
/// },
/// VpcEndpointType = example.ServiceType,
/// VpcId = exampleAwsVpc.Id,
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
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// example, err := ec2.NewVpcEndpointService(ctx, "example", &ec2.VpcEndpointServiceArgs{
/// AcceptanceRequired: pulumi.Bool(false),
/// AllowedPrincipals: pulumi.StringArray{
/// pulumi.String(current.Arn),
/// },
/// GatewayLoadBalancerArns: pulumi.StringArray{
/// exampleAwsLb.Arn,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewVpcEndpoint(ctx, "example", &ec2.VpcEndpointArgs{
/// ServiceName: example.ServiceName,
/// SubnetIds: pulumi.StringArray{
/// exampleAwsSubnet.Id,
/// },
/// VpcEndpointType: example.ServiceType,
/// VpcId:           pulumi.Any(exampleAwsVpc.Id),
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
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.ec2.VpcEndpointService;
/// import com.pulumi.aws.ec2.VpcEndpointServiceArgs;
/// import com.pulumi.aws.ec2.VpcEndpoint;
/// import com.pulumi.aws.ec2.VpcEndpointArgs;
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
/// final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
/// .build());
///
/// var example = new VpcEndpointService("example", VpcEndpointServiceArgs.builder()
/// .acceptanceRequired(false)
/// .allowedPrincipals(current.arn())
/// .gatewayLoadBalancerArns(exampleAwsLb.arn())
/// .build());
///
/// var exampleVpcEndpoint = new VpcEndpoint("exampleVpcEndpoint", VpcEndpointArgs.builder()
/// .serviceName(example.serviceName())
/// .subnetIds(exampleAwsSubnet.id())
/// .vpcEndpointType(example.serviceType())
/// .vpcId(exampleAwsVpc.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:VpcEndpointService
/// properties:
/// acceptanceRequired: false
/// allowedPrincipals:
/// - ${current.arn}
/// gatewayLoadBalancerArns:
/// - ${exampleAwsLb.arn}
/// exampleVpcEndpoint:
/// type: aws:ec2:VpcEndpoint
/// name: example
/// properties:
/// serviceName: ${example.serviceName}
/// subnetIds:
/// - ${exampleAwsSubnet.id}
/// vpcEndpointType: ${example.serviceType}
/// vpcId: ${exampleAwsVpc.id}
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### VPC Lattice Resource Configuration Endpoint Type
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.VpcEndpoint("example", {
/// resourceConfigurationArn: exampleAwsVpclatticeResourceConfiguration.arn,
/// subnetIds: [exampleAwsSubnet.id],
/// vpcEndpointType: "Resource",
/// vpcId: exampleAwsVpc.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.VpcEndpoint("example",
/// resource_configuration_arn=example_aws_vpclattice_resource_configuration["arn"],
/// subnet_ids=[example_aws_subnet["id"]],
/// vpc_endpoint_type="Resource",
/// vpc_id=example_aws_vpc["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.VpcEndpoint("example", new()
/// {
/// ResourceConfigurationArn = exampleAwsVpclatticeResourceConfiguration.Arn,
/// SubnetIds = new[]
/// {
/// exampleAwsSubnet.Id,
/// },
/// VpcEndpointType = "Resource",
/// VpcId = exampleAwsVpc.Id,
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
/// _, err := ec2.NewVpcEndpoint(ctx, "example", &ec2.VpcEndpointArgs{
/// ResourceConfigurationArn: pulumi.Any(exampleAwsVpclatticeResourceConfiguration.Arn),
/// SubnetIds: pulumi.StringArray{
/// exampleAwsSubnet.Id,
/// },
/// VpcEndpointType: pulumi.String("Resource"),
/// VpcId:           pulumi.Any(exampleAwsVpc.Id),
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
/// import com.pulumi.aws.ec2.VpcEndpoint;
/// import com.pulumi.aws.ec2.VpcEndpointArgs;
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
/// var example = new VpcEndpoint("example", VpcEndpointArgs.builder()
/// .resourceConfigurationArn(exampleAwsVpclatticeResourceConfiguration.arn())
/// .subnetIds(exampleAwsSubnet.id())
/// .vpcEndpointType("Resource")
/// .vpcId(exampleAwsVpc.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:VpcEndpoint
/// properties:
/// resourceConfigurationArn: ${exampleAwsVpclatticeResourceConfiguration.arn}
/// subnetIds:
/// - ${exampleAwsSubnet.id}
/// vpcEndpointType: Resource
/// vpcId: ${exampleAwsVpc.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### VPC Lattice Service Network Endpoint Type
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.VpcEndpoint("example", {
/// serviceNetworkArn: exampleAwsVpclatticeServiceNetwork.arn,
/// subnetIds: [exampleAwsSubnet.id],
/// vpcEndpointType: "ServiceNetwork",
/// vpcId: exampleAwsVpc.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.VpcEndpoint("example",
/// service_network_arn=example_aws_vpclattice_service_network["arn"],
/// subnet_ids=[example_aws_subnet["id"]],
/// vpc_endpoint_type="ServiceNetwork",
/// vpc_id=example_aws_vpc["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.VpcEndpoint("example", new()
/// {
/// ServiceNetworkArn = exampleAwsVpclatticeServiceNetwork.Arn,
/// SubnetIds = new[]
/// {
/// exampleAwsSubnet.Id,
/// },
/// VpcEndpointType = "ServiceNetwork",
/// VpcId = exampleAwsVpc.Id,
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
/// _, err := ec2.NewVpcEndpoint(ctx, "example", &ec2.VpcEndpointArgs{
/// ServiceNetworkArn: pulumi.Any(exampleAwsVpclatticeServiceNetwork.Arn),
/// SubnetIds: pulumi.StringArray{
/// exampleAwsSubnet.Id,
/// },
/// VpcEndpointType: pulumi.String("ServiceNetwork"),
/// VpcId:           pulumi.Any(exampleAwsVpc.Id),
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
/// import com.pulumi.aws.ec2.VpcEndpoint;
/// import com.pulumi.aws.ec2.VpcEndpointArgs;
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
/// var example = new VpcEndpoint("example", VpcEndpointArgs.builder()
/// .serviceNetworkArn(exampleAwsVpclatticeServiceNetwork.arn())
/// .subnetIds(exampleAwsSubnet.id())
/// .vpcEndpointType("ServiceNetwork")
/// .vpcId(exampleAwsVpc.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:VpcEndpoint
/// properties:
/// serviceNetworkArn: ${exampleAwsVpclatticeServiceNetwork.arn}
/// subnetIds:
/// - ${exampleAwsSubnet.id}
/// vpcEndpointType: ServiceNetwork
/// vpcId: ${exampleAwsVpc.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Non-AWS Service
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ptfeService = new aws.ec2.VpcEndpoint("ptfe_service", {
/// vpcId: vpcId,
/// serviceName: ptfeServiceConfig,
/// vpcEndpointType: "Interface",
/// securityGroupIds: [ptfeServiceAwsSecurityGroup.id],
/// subnetIds: [subnetIds],
/// privateDnsEnabled: false,
/// });
/// const internal = aws.route53.getZone({
/// name: "vpc.internal.",
/// privateZone: true,
/// vpcId: vpcId,
/// });
/// const ptfeServiceRecord = new aws.route53.Record("ptfe_service", {
/// zoneId: internal.then(internal => internal.zoneId),
/// name: internal.then(internal => `ptfe.${internal.name}`),
/// type: aws.route53.RecordType.CNAME,
/// ttl: 300,
/// records: [ptfeService.dnsEntries[0].dns_name],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ptfe_service = aws.ec2.VpcEndpoint("ptfe_service",
/// vpc_id=vpc_id,
/// service_name=ptfe_service_config,
/// vpc_endpoint_type="Interface",
/// security_group_ids=[ptfe_service_aws_security_group["id"]],
/// subnet_ids=[subnet_ids],
/// private_dns_enabled=False)
/// internal = aws.route53.get_zone(name="vpc.internal.",
/// private_zone=True,
/// vpc_id=vpc_id)
/// ptfe_service_record = aws.route53.Record("ptfe_service",
/// zone_id=internal.zone_id,
/// name=f"ptfe.{internal.name}",
/// type=aws.route53.RecordType.CNAME,
/// ttl=300,
/// records=[ptfe_service.dns_entries[0].dns_name])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var ptfeService = new Aws.Ec2.VpcEndpoint("ptfe_service", new()
/// {
/// VpcId = vpcId,
/// ServiceName = ptfeServiceConfig,
/// VpcEndpointType = "Interface",
/// SecurityGroupIds = new[]
/// {
/// ptfeServiceAwsSecurityGroup.Id,
/// },
/// SubnetIds = new[]
/// {
/// subnetIds,
/// },
/// PrivateDnsEnabled = false,
/// });
///
/// var @internal = Aws.Route53.GetZone.Invoke(new()
/// {
/// Name = "vpc.internal.",
/// PrivateZone = true,
/// VpcId = vpcId,
/// });
///
/// var ptfeServiceRecord = new Aws.Route53.Record("ptfe_service", new()
/// {
/// ZoneId = @internal.Apply(@internal => @internal.Apply(getZoneResult => getZoneResult.ZoneId)),
/// Name = @internal.Apply(@internal => $"ptfe.{@internal.Apply(getZoneResult => getZoneResult.Name)}"),
/// Type = Aws.Route53.RecordType.CNAME,
/// Ttl = 300,
/// Records = new[]
/// {
/// ptfeService.DnsEntries.Apply(dnsEntries => dnsEntries[0].Dns_name),
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// ptfeService, err := ec2.NewVpcEndpoint(ctx, "ptfe_service", &ec2.VpcEndpointArgs{
/// VpcId: pulumi.Any(vpcId),
/// ServiceName: pulumi.Any(ptfeServiceConfig),
/// VpcEndpointType: pulumi.String("Interface"),
/// SecurityGroupIds: pulumi.StringArray{
/// ptfeServiceAwsSecurityGroup.Id,
/// },
/// SubnetIds: pulumi.StringArray{
/// subnetIds,
/// },
/// PrivateDnsEnabled: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// internal, err := route53.LookupZone(ctx, &route53.LookupZoneArgs{
/// Name: pulumi.StringRef("vpc.internal."),
/// PrivateZone: pulumi.BoolRef(true),
/// VpcId: pulumi.StringRef(vpcId),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// _, err = route53.NewRecord(ctx, "ptfe_service", &route53.RecordArgs{
/// ZoneId: pulumi.String(internal.ZoneId),
/// Name: pulumi.Sprintf("ptfe.%v", internal.Name),
/// Type: pulumi.String(route53.RecordTypeCNAME),
/// Ttl: pulumi.Int(300),
/// Records: pulumi.StringArray{
/// pulumi.String(ptfeService.DnsEntries.ApplyT(func(dnsEntries []ec2.VpcEndpointDnsEntry) (interface{}, error) {
/// return dnsEntries[0].Dns_name, nil
/// }).(pulumi.Interface{}Output)),
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
/// import com.pulumi.aws.ec2.VpcEndpoint;
/// import com.pulumi.aws.ec2.VpcEndpointArgs;
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetZoneArgs;
/// import com.pulumi.aws.route53.Record;
/// import com.pulumi.aws.route53.RecordArgs;
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
/// var ptfeService = new VpcEndpoint("ptfeService", VpcEndpointArgs.builder()
/// .vpcId(vpcId)
/// .serviceName(ptfeServiceConfig)
/// .vpcEndpointType("Interface")
/// .securityGroupIds(ptfeServiceAwsSecurityGroup.id())
/// .subnetIds(subnetIds)
/// .privateDnsEnabled(false)
/// .build());
///
/// final var internal = Route53Functions.getZone(GetZoneArgs.builder()
/// .name("vpc.internal.")
/// .privateZone(true)
/// .vpcId(vpcId)
/// .build());
///
/// var ptfeServiceRecord = new Record("ptfeServiceRecord", RecordArgs.builder()
/// .zoneId(internal.zoneId())
/// .name(String.format("ptfe.%s", internal.name()))
/// .type("CNAME")
/// .ttl(300)
/// .records(ptfeService.dnsEntries().applyValue(_dnsEntries -> _dnsEntries[0].dns_name()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// ptfeService:
/// type: aws:ec2:VpcEndpoint
/// name: ptfe_service
/// properties:
/// vpcId: ${vpcId}
/// serviceName: ${ptfeServiceConfig}
/// vpcEndpointType: Interface
/// securityGroupIds:
/// - ${ptfeServiceAwsSecurityGroup.id}
/// subnetIds:
/// - ${subnetIds}
/// privateDnsEnabled: false
/// ptfeServiceRecord:
/// type: aws:route53:Record
/// name: ptfe_service
/// properties:
/// zoneId: ${internal.zoneId}
/// name: ptfe.${internal.name}
/// type: CNAME
/// ttl: '300'
/// records:
/// - ${ptfeService.dnsEntries[0].dns_name}
/// variables:
/// internal:
/// fn::invoke:
/// function: aws:route53:getZone
/// arguments:
/// name: vpc.internal.
/// privateZone: true
/// vpcId: ${vpcId}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// > **NOTE The <span pulumi-lang-nodejs="`dnsEntry`" pulumi-lang-dotnet="`DnsEntry`" pulumi-lang-go="`dnsEntry`" pulumi-lang-python="`dns_entry`" pulumi-lang-yaml="`dnsEntry`" pulumi-lang-java="`dnsEntry`">`dns_entry`</span> output is a list of maps:** This provider interpolation support for lists of maps requires the <span pulumi-lang-nodejs="`lookup`" pulumi-lang-dotnet="`Lookup`" pulumi-lang-go="`lookup`" pulumi-lang-python="`lookup`" pulumi-lang-yaml="`lookup`" pulumi-lang-java="`lookup`">`lookup`</span> and `[]` until full support of lists of maps is available
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> - (String) ID of the VPC endpoint.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import VPC Endpoints using the VPC endpoint <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcEndpoint:VpcEndpoint example vpce-3ecf2a57
/// ```
class VpcEndpoint extends CustomResource {
  /// The Amazon Resource Name (ARN) of the VPC endpoint.
  late final Output<String> arn;

  /// Accept the VPC endpoint (the VPC endpoint and service need to be in the same AWS account).
  late final Output<bool?> autoAccept;

  /// The list of CIDR blocks for the exposed AWS service. Applicable for endpoints of type `Gateway`.
  late final Output<List<String>> cidrBlocks;

  /// The DNS entries for the VPC Endpoint. Applicable for endpoints of type `Interface`. DNS blocks are documented below.
  late final Output<List<VpcEndpointDnsEntry>> dnsEntries;

  /// The DNS options for the endpoint. See<span pulumi-lang-nodejs=" dnsOptions " pulumi-lang-dotnet=" DnsOptions " pulumi-lang-go=" dnsOptions " pulumi-lang-python=" dns_options " pulumi-lang-yaml=" dnsOptions " pulumi-lang-java=" dnsOptions "> dns_options </span>below.
  late final Output<VpcEndpointDnsOptions> dnsOptions;

  /// The IP address type for the endpoint. Valid values are <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span>, <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span>, and <span pulumi-lang-nodejs="`ipv6`" pulumi-lang-dotnet="`Ipv6`" pulumi-lang-go="`ipv6`" pulumi-lang-python="`ipv6`" pulumi-lang-yaml="`ipv6`" pulumi-lang-java="`ipv6`">`ipv6`</span>.
  late final Output<String> ipAddressType;

  /// One or more network interfaces for the VPC Endpoint. Applicable for endpoints of type `Interface`.
  late final Output<List<String>> networkInterfaceIds;

  /// The ID of the AWS account that owns the VPC endpoint.
  late final Output<String> ownerId;

  /// A policy to attach to the endpoint that controls access to the service. This is a JSON formatted string. Defaults to full access. All `Gateway` and some `Interface` endpoints support policies - see the [relevant AWS documentation](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-endpoints-access.html) for more details.
  late final Output<String> policy;

  /// The prefix list ID of the exposed AWS service. Applicable for endpoints of type `Gateway`.
  late final Output<String> prefixListId;

  /// Whether or not to associate a private hosted zone with the specified VPC. Applicable for endpoints of type `Interface`. Most users will want this enabled to allow services within the VPC to automatically use the endpoint.
  /// Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool> privateDnsEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Whether or not the VPC Endpoint is being managed by its service - <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> or <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool> requesterManaged;

  /// The ARN of a Resource Configuration to connect this VPC Endpoint to. Exactly one of <span pulumi-lang-nodejs="`resourceConfigurationArn`" pulumi-lang-dotnet="`ResourceConfigurationArn`" pulumi-lang-go="`resourceConfigurationArn`" pulumi-lang-python="`resource_configuration_arn`" pulumi-lang-yaml="`resourceConfigurationArn`" pulumi-lang-java="`resourceConfigurationArn`">`resource_configuration_arn`</span>, <span pulumi-lang-nodejs="`serviceName`" pulumi-lang-dotnet="`ServiceName`" pulumi-lang-go="`serviceName`" pulumi-lang-python="`service_name`" pulumi-lang-yaml="`serviceName`" pulumi-lang-java="`serviceName`">`service_name`</span> or <span pulumi-lang-nodejs="`serviceNetworkArn`" pulumi-lang-dotnet="`ServiceNetworkArn`" pulumi-lang-go="`serviceNetworkArn`" pulumi-lang-python="`service_network_arn`" pulumi-lang-yaml="`serviceNetworkArn`" pulumi-lang-java="`serviceNetworkArn`">`service_network_arn`</span> is required.
  late final Output<String?> resourceConfigurationArn;

  /// One or more route table IDs. Applicable for endpoints of type `Gateway`.
  late final Output<List<String>> routeTableIds;

  /// The ID of one or more security groups to associate with the network interface. Applicable for endpoints of type `Interface`.
  /// If no security groups are specified, the VPC's [default security group](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html#DefaultSecurityGroup) is associated with the endpoint.
  late final Output<List<String>> securityGroupIds;

  /// The service name. For AWS services the service name is usually in the form `com.amazonaws.<region>.<service>` (the SageMaker AI Notebook service is an exception to this rule, the service name is in the form `aws.sagemaker.<region>.notebook`). Exactly one of <span pulumi-lang-nodejs="`resourceConfigurationArn`" pulumi-lang-dotnet="`ResourceConfigurationArn`" pulumi-lang-go="`resourceConfigurationArn`" pulumi-lang-python="`resource_configuration_arn`" pulumi-lang-yaml="`resourceConfigurationArn`" pulumi-lang-java="`resourceConfigurationArn`">`resource_configuration_arn`</span>, <span pulumi-lang-nodejs="`serviceName`" pulumi-lang-dotnet="`ServiceName`" pulumi-lang-go="`serviceName`" pulumi-lang-python="`service_name`" pulumi-lang-yaml="`serviceName`" pulumi-lang-java="`serviceName`">`service_name`</span> or <span pulumi-lang-nodejs="`serviceNetworkArn`" pulumi-lang-dotnet="`ServiceNetworkArn`" pulumi-lang-go="`serviceNetworkArn`" pulumi-lang-python="`service_network_arn`" pulumi-lang-yaml="`serviceNetworkArn`" pulumi-lang-java="`serviceNetworkArn`">`service_network_arn`</span> is required.
  late final Output<String?> serviceName;

  /// The ARN of a Service Network to connect this VPC Endpoint to. Exactly one of <span pulumi-lang-nodejs="`resourceConfigurationArn`" pulumi-lang-dotnet="`ResourceConfigurationArn`" pulumi-lang-go="`resourceConfigurationArn`" pulumi-lang-python="`resource_configuration_arn`" pulumi-lang-yaml="`resourceConfigurationArn`" pulumi-lang-java="`resourceConfigurationArn`">`resource_configuration_arn`</span>, <span pulumi-lang-nodejs="`serviceName`" pulumi-lang-dotnet="`ServiceName`" pulumi-lang-go="`serviceName`" pulumi-lang-python="`service_name`" pulumi-lang-yaml="`serviceName`" pulumi-lang-java="`serviceName`">`service_name`</span> or <span pulumi-lang-nodejs="`serviceNetworkArn`" pulumi-lang-dotnet="`ServiceNetworkArn`" pulumi-lang-go="`serviceNetworkArn`" pulumi-lang-python="`service_network_arn`" pulumi-lang-yaml="`serviceNetworkArn`" pulumi-lang-java="`serviceNetworkArn`">`service_network_arn`</span> is required.
  late final Output<String?> serviceNetworkArn;

  /// The AWS region of the VPC Endpoint Service. If specified, the VPC endpoint will connect to the service in the provided region. Applicable for endpoints of type `Interface`.
  late final Output<String> serviceRegion;

  /// The state of the VPC endpoint.
  late final Output<String> state;

  /// Subnet configuration for the endpoint, used to select specific IPv4 and/or IPv6 addresses to the endpoint. See<span pulumi-lang-nodejs=" subnetConfiguration " pulumi-lang-dotnet=" SubnetConfiguration " pulumi-lang-go=" subnetConfiguration " pulumi-lang-python=" subnet_configuration " pulumi-lang-yaml=" subnetConfiguration " pulumi-lang-java=" subnetConfiguration "> subnet_configuration </span>below.
  late final Output<List<VpcEndpointSubnetConfiguration>> subnetConfigurations;

  /// The ID of one or more subnets in which to create a network interface for the endpoint. Applicable for endpoints of type `GatewayLoadBalancer` and `Interface`. Interface type endpoints cannot function without being assigned to a subnet.
  late final Output<List<String>> subnetIds;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The VPC endpoint type, `Gateway`, `GatewayLoadBalancer`,`Interface`, `Resource` or `ServiceNetwork`. Defaults to `Gateway`.
  late final Output<String?> vpcEndpointType;

  /// The ID of the VPC in which the endpoint will be used.
  late final Output<String> vpcId;

  VpcEndpoint(
    String name, {
    VpcEndpointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcEndpoint:VpcEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.autoAccept = Output.createUnknown<bool?>();
    this.cidrBlocks = Output.createUnknown<List<String>>();
    this.dnsEntries = Output.createUnknown<List<VpcEndpointDnsEntry>>();
    this.dnsOptions = Output.createUnknown<VpcEndpointDnsOptions>();
    this.ipAddressType = Output.createUnknown<String>();
    this.networkInterfaceIds = Output.createUnknown<List<String>>();
    this.ownerId = Output.createUnknown<String>();
    this.policy = Output.createUnknown<String>();
    this.prefixListId = Output.createUnknown<String>();
    this.privateDnsEnabled = Output.createUnknown<bool>();
    this.region = Output.createUnknown<String>();
    this.requesterManaged = Output.createUnknown<bool>();
    this.resourceConfigurationArn = Output.createUnknown<String?>();
    this.routeTableIds = Output.createUnknown<List<String>>();
    this.securityGroupIds = Output.createUnknown<List<String>>();
    this.serviceName = Output.createUnknown<String?>();
    this.serviceNetworkArn = Output.createUnknown<String?>();
    this.serviceRegion = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.subnetConfigurations =
        Output.createUnknown<List<VpcEndpointSubnetConfiguration>>();
    this.subnetIds = Output.createUnknown<List<String>>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.vpcEndpointType = Output.createUnknown<String?>();
    this.vpcId = Output.createUnknown<String>();
  }
}
