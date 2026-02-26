import 'package:pulumi/pulumi.dart';
import 'get_access_point_args2.dart';
import 'get_access_point_result2.dart';

/// Provides details about a specific S3 access point.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.s3.getAccessPoint({
/// name: "example-access-point",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.get_access_point(name="example-access-point")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.S3.GetAccessPoint.Invoke(new()
/// {
/// Name = "example-access-point",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := s3.LookupAccessPoint(ctx, &s3.LookupAccessPointArgs{
/// Name: "example-access-point",
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
/// import com.pulumi.aws.s3.S3Functions;
/// import com.pulumi.aws.s3.inputs.GetAccessPointArgs;
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
/// final var example = S3Functions.getAccessPoint(GetAccessPointArgs.builder()
/// .name("example-access-point")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:s3:getAccessPoint
/// arguments:
/// name: example-access-point
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAccessPointResult2> getAccessPoint2(
  GetAccessPointArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getAccessPoint:getAccessPoint',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAccessPointResult2.fromMap(result);
}
