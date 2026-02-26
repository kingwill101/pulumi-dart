import 'package:pulumi/pulumi.dart';
import 'get_vpc_endpoint_service_args.dart';
import 'get_vpc_endpoint_service_result.dart';

/// The VPC Endpoint Service data source details about a specific service that
/// can be specified when creating a VPC endpoint within the region configured in the provider.
///
/// ## Example Usage
///
/// ### AWS Service
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Declare the data source
/// const s3 = aws.ec2.getVpcEndpointService({
/// service: "s3",
/// serviceType: "Gateway",
/// });
/// // Create a VPC
/// const foo = new aws.ec2.Vpc("foo", {cidrBlock: "10.0.0.0/16"});
/// // Create a VPC endpoint
/// const ep = new aws.ec2.VpcEndpoint("ep", {
/// vpcId: foo.id,
/// serviceName: s3.then(s3 => s3.serviceName),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Declare the data source
/// s3 = aws.ec2.get_vpc_endpoint_service(service="s3",
/// service_type="Gateway")
/// # Create a VPC
/// foo = aws.ec2.Vpc("foo", cidr_block="10.0.0.0/16")
/// # Create a VPC endpoint
/// ep = aws.ec2.VpcEndpoint("ep",
/// vpc_id=foo.id,
/// service_name=s3.service_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // Declare the data source
/// var s3 = Aws.Ec2.GetVpcEndpointService.Invoke(new()
/// {
/// Service = "s3",
/// ServiceType = "Gateway",
/// });
///
/// // Create a VPC
/// var foo = new Aws.Ec2.Vpc("foo", new()
/// {
/// CidrBlock = "10.0.0.0/16",
/// });
///
/// // Create a VPC endpoint
/// var ep = new Aws.Ec2.VpcEndpoint("ep", new()
/// {
/// VpcId = foo.Id,
/// ServiceName = s3.Apply(getVpcEndpointServiceResult => getVpcEndpointServiceResult.ServiceName),
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
/// // Declare the data source
/// s3, err := ec2.LookupVpcEndpointService(ctx, &ec2.LookupVpcEndpointServiceArgs{
/// Service:     pulumi.StringRef("s3"),
/// ServiceType: pulumi.StringRef("Gateway"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// // Create a VPC
/// foo, err := ec2.NewVpc(ctx, "foo", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("10.0.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// // Create a VPC endpoint
/// _, err = ec2.NewVpcEndpoint(ctx, "ep", &ec2.VpcEndpointArgs{
/// VpcId:       foo.ID(),
/// ServiceName: pulumi.String(s3.ServiceName),
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
/// import com.pulumi.aws.ec2.inputs.GetVpcEndpointServiceArgs;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
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
/// // Declare the data source
/// final var s3 = Ec2Functions.getVpcEndpointService(GetVpcEndpointServiceArgs.builder()
/// .service("s3")
/// .serviceType("Gateway")
/// .build());
///
/// // Create a VPC
/// var foo = new Vpc("foo", VpcArgs.builder()
/// .cidrBlock("10.0.0.0/16")
/// .build());
///
/// // Create a VPC endpoint
/// var ep = new VpcEndpoint("ep", VpcEndpointArgs.builder()
/// .vpcId(foo.id())
/// .serviceName(s3.serviceName())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Create a VPC
/// foo:
/// type: aws:ec2:Vpc
/// properties:
/// cidrBlock: 10.0.0.0/16
/// # Create a VPC endpoint
/// ep:
/// type: aws:ec2:VpcEndpoint
/// properties:
/// vpcId: ${foo.id}
/// serviceName: ${s3.serviceName}
/// variables:
/// # Declare the data source
/// s3:
/// fn::invoke:
/// function: aws:ec2:getVpcEndpointService
/// arguments:
/// service: s3
/// serviceType: Gateway
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
/// const custome = aws.ec2.getVpcEndpointService({
/// serviceName: "com.amazonaws.vpce.us-west-2.vpce-svc-0e87519c997c63cd8",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// custome = aws.ec2.get_vpc_endpoint_service(service_name="com.amazonaws.vpce.us-west-2.vpce-svc-0e87519c997c63cd8")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var custome = Aws.Ec2.GetVpcEndpointService.Invoke(new()
/// {
/// ServiceName = "com.amazonaws.vpce.us-west-2.vpce-svc-0e87519c997c63cd8",
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
/// _, err := ec2.LookupVpcEndpointService(ctx, &ec2.LookupVpcEndpointServiceArgs{
/// ServiceName: pulumi.StringRef("com.amazonaws.vpce.us-west-2.vpce-svc-0e87519c997c63cd8"),
/// }, nil)
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
/// import com.pulumi.aws.ec2.inputs.GetVpcEndpointServiceArgs;
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
/// final var custome = Ec2Functions.getVpcEndpointService(GetVpcEndpointServiceArgs.builder()
/// .serviceName("com.amazonaws.vpce.us-west-2.vpce-svc-0e87519c997c63cd8")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// custome:
/// fn::invoke:
/// function: aws:ec2:getVpcEndpointService
/// arguments:
/// serviceName: com.amazonaws.vpce.us-west-2.vpce-svc-0e87519c997c63cd8
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Filter
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.ec2.getVpcEndpointService({
/// filters: [{
/// name: "service-name",
/// values: ["some-service"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.get_vpc_endpoint_service(filters=[{
/// "name": "service-name",
/// "values": ["some-service"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.Ec2.GetVpcEndpointService.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetVpcEndpointServiceFilterInputArgs
/// {
/// Name = "service-name",
/// Values = new[]
/// {
/// "some-service",
/// },
/// },
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
/// _, err := ec2.LookupVpcEndpointService(ctx, &ec2.LookupVpcEndpointServiceArgs{
/// Filters: []ec2.GetVpcEndpointServiceFilter{
/// {
/// Name: "service-name",
/// Values: []string{
/// "some-service",
/// },
/// },
/// },
/// }, nil)
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
/// import com.pulumi.aws.ec2.inputs.GetVpcEndpointServiceArgs;
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
/// final var test = Ec2Functions.getVpcEndpointService(GetVpcEndpointServiceArgs.builder()
/// .filters(GetVpcEndpointServiceFilterArgs.builder()
/// .name("service-name")
/// .values("some-service")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:ec2:getVpcEndpointService
/// arguments:
/// filters:
/// - name: service-name
/// values:
/// - some-service
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetVpcEndpointServiceResult> getVpcEndpointService(
  GetVpcEndpointServiceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcEndpointService:getVpcEndpointService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpcEndpointServiceResult.fromMap(result);
}
