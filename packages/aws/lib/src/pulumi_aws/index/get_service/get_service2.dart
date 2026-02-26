import 'package:pulumi/pulumi.dart';
import 'get_service_args2.dart';
import 'get_service_result2.dart';

/// Use this data source to compose and decompose AWS service DNS names.
///
/// ## Example Usage
///
/// ### Get Service DNS Name
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegion({});
/// const test = current.then(current => aws.getService({
/// region: current.region,
/// serviceId: "ec2",
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// test = aws.get_service(region=current.region,
/// service_id="ec2")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Aws.GetRegion.Invoke();
///
/// var test = Aws.GetService.Invoke(new()
/// {
/// Region = current.Apply(getRegionResult => getRegionResult.Region),
/// ServiceId = "ec2",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = aws.GetService(ctx, &aws.GetServiceArgs{
/// Region:    pulumi.StringRef(current.Region),
/// ServiceId: pulumi.StringRef("ec2"),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.inputs.GetServiceArgs;
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
/// final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
/// .build());
///
/// final var test = AwsFunctions.getService(GetServiceArgs.builder()
/// .region(current.region())
/// .serviceId("ec2")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getRegion
/// arguments: {}
/// test:
/// fn::invoke:
/// function: aws:getService
/// arguments:
/// region: ${current.region}
/// serviceId: ec2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Use Service Reverse DNS Name to Get Components
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const s3 = aws.getService({
/// reverseDnsName: "cn.com.amazonaws.cn-north-1.s3",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// s3 = aws.get_service(reverse_dns_name="cn.com.amazonaws.cn-north-1.s3")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var s3 = Aws.GetService.Invoke(new()
/// {
/// ReverseDnsName = "cn.com.amazonaws.cn-north-1.s3",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := aws.GetService(ctx, &aws.GetServiceArgs{
/// ReverseDnsName: pulumi.StringRef("cn.com.amazonaws.cn-north-1.s3"),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetServiceArgs;
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
/// final var s3 = AwsFunctions.getService(GetServiceArgs.builder()
/// .reverseDnsName("cn.com.amazonaws.cn-north-1.s3")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// s3:
/// fn::invoke:
/// function: aws:getService
/// arguments:
/// reverseDnsName: cn.com.amazonaws.cn-north-1.s3
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Determine Regional Support for a Service
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const s3 = aws.getService({
/// reverseDnsName: "com.amazonaws.us-gov-west-1.waf",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// s3 = aws.get_service(reverse_dns_name="com.amazonaws.us-gov-west-1.waf")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var s3 = Aws.GetService.Invoke(new()
/// {
/// ReverseDnsName = "com.amazonaws.us-gov-west-1.waf",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := aws.GetService(ctx, &aws.GetServiceArgs{
/// ReverseDnsName: pulumi.StringRef("com.amazonaws.us-gov-west-1.waf"),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetServiceArgs;
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
/// final var s3 = AwsFunctions.getService(GetServiceArgs.builder()
/// .reverseDnsName("com.amazonaws.us-gov-west-1.waf")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// s3:
/// fn::invoke:
/// function: aws:getService
/// arguments:
/// reverseDnsName: com.amazonaws.us-gov-west-1.waf
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetServiceResult2> getService2(
  GetServiceArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getService:getService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceResult2.fromMap(result);
}
