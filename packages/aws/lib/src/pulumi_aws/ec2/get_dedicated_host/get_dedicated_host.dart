import 'package:pulumi/pulumi.dart';
import 'get_dedicated_host_args.dart';
import 'get_dedicated_host_result.dart';

/// Use this data source to get information about an EC2 Dedicated Host.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testDedicatedHost = new aws.ec2.DedicatedHost("test", {
/// instanceType: "c5.18xlarge",
/// availabilityZone: "us-west-2a",
/// });
/// const test = aws.ec2.getDedicatedHostOutput({
/// hostId: testDedicatedHost.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_dedicated_host = aws.ec2.DedicatedHost("test",
/// instance_type="c5.18xlarge",
/// availability_zone="us-west-2a")
/// test = aws.ec2.get_dedicated_host_output(host_id=test_dedicated_host.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var testDedicatedHost = new Aws.Ec2.DedicatedHost("test", new()
/// {
/// InstanceType = "c5.18xlarge",
/// AvailabilityZone = "us-west-2a",
/// });
///
/// var test = Aws.Ec2.GetDedicatedHost.Invoke(new()
/// {
/// HostId = testDedicatedHost.Id,
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
/// testDedicatedHost, err := ec2.NewDedicatedHost(ctx, "test", &ec2.DedicatedHostArgs{
/// InstanceType:     pulumi.String("c5.18xlarge"),
/// AvailabilityZone: pulumi.String("us-west-2a"),
/// })
/// if err != nil {
/// return err
/// }
/// _ = ec2.LookupDedicatedHostOutput(ctx, ec2.GetDedicatedHostOutputArgs{
/// HostId: testDedicatedHost.ID(),
/// }, nil)
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
/// import com.pulumi.aws.ec2.DedicatedHost;
/// import com.pulumi.aws.ec2.DedicatedHostArgs;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetDedicatedHostArgs;
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
/// var testDedicatedHost = new DedicatedHost("testDedicatedHost", DedicatedHostArgs.builder()
/// .instanceType("c5.18xlarge")
/// .availabilityZone("us-west-2a")
/// .build());
///
/// final var test = Ec2Functions.getDedicatedHost(GetDedicatedHostArgs.builder()
/// .hostId(testDedicatedHost.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testDedicatedHost:
/// type: aws:ec2:DedicatedHost
/// name: test
/// properties:
/// instanceType: c5.18xlarge
/// availabilityZone: us-west-2a
/// variables:
/// test:
/// fn::invoke:
/// function: aws:ec2:getDedicatedHost
/// arguments:
/// hostId: ${testDedicatedHost.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Filter Example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.ec2.getDedicatedHost({
/// filters: [{
/// name: "instance-type",
/// values: ["c5.18xlarge"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.get_dedicated_host(filters=[{
/// "name": "instance-type",
/// "values": ["c5.18xlarge"],
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
/// var test = Aws.Ec2.GetDedicatedHost.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetDedicatedHostFilterInputArgs
/// {
/// Name = "instance-type",
/// Values = new[]
/// {
/// "c5.18xlarge",
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
/// _, err := ec2.LookupDedicatedHost(ctx, &ec2.LookupDedicatedHostArgs{
/// Filters: []ec2.GetDedicatedHostFilter{
/// {
/// Name: "instance-type",
/// Values: []string{
/// "c5.18xlarge",
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
/// import com.pulumi.aws.ec2.inputs.GetDedicatedHostArgs;
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
/// final var test = Ec2Functions.getDedicatedHost(GetDedicatedHostArgs.builder()
/// .filters(GetDedicatedHostFilterArgs.builder()
/// .name("instance-type")
/// .values("c5.18xlarge")
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
/// function: aws:ec2:getDedicatedHost
/// arguments:
/// filters:
/// - name: instance-type
/// values:
/// - c5.18xlarge
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDedicatedHostResult> getDedicatedHost(
  GetDedicatedHostArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getDedicatedHost:getDedicatedHost',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDedicatedHostResult.fromMap(result);
}
