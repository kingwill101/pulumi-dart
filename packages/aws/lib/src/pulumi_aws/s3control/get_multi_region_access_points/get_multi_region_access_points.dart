import 'package:pulumi/pulumi.dart';
import 'get_multi_region_access_points_args.dart';
import 'get_multi_region_access_points_result.dart';

/// Provides details about AWS S3 Control Multi-Region Access Points.
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
/// const example = aws.s3control.getMultiRegionAccessPoints({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3control.get_multi_region_access_points()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.S3Control.GetMultiRegionAccessPoints.Invoke();
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
/// _, err := s3control.GetMultiRegionAccessPoints(ctx, &s3control.GetMultiRegionAccessPointsArgs{}, nil)
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
/// import com.pulumi.aws.s3control.inputs.GetMultiRegionAccessPointsArgs;
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
/// final var example = S3controlFunctions.getMultiRegionAccessPoints(GetMultiRegionAccessPointsArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:s3control:getMultiRegionAccessPoints
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetMultiRegionAccessPointsResult> getMultiRegionAccessPoints(
  GetMultiRegionAccessPointsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3control/getMultiRegionAccessPoints:getMultiRegionAccessPoints',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMultiRegionAccessPointsResult.fromMap(result);
}
