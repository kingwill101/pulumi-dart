import 'package:pulumi/pulumi.dart';
import 'get_multi_region_access_point_args.dart';
import 'get_multi_region_access_point_result.dart';

/// Provides details on a specific S3 Multi-Region Access Point.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.s3control.getMultiRegionAccessPoint({
/// name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3control.get_multi_region_access_point(name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.S3Control.GetMultiRegionAccessPoint.Invoke(new()
/// {
/// Name = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3control"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := s3control.LookupMultiRegionAccessPoint(ctx, &s3control.LookupMultiRegionAccessPointArgs{
/// Name: "example",
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
/// import com.pulumi.aws.s3control.S3controlFunctions;
/// import com.pulumi.aws.s3control.inputs.GetMultiRegionAccessPointArgs;
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
/// final var example = S3controlFunctions.getMultiRegionAccessPoint(GetMultiRegionAccessPointArgs.builder()
/// .name("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:s3control:getMultiRegionAccessPoint
/// arguments:
/// name: example
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetMultiRegionAccessPointResult> getMultiRegionAccessPoint(
  GetMultiRegionAccessPointArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3control/getMultiRegionAccessPoint:getMultiRegionAccessPoint',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMultiRegionAccessPointResult.fromMap(result);
}
