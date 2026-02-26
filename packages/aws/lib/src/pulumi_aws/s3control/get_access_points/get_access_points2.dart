import 'package:pulumi/pulumi.dart';
import 'get_access_points_args2.dart';
import 'get_access_points_result2.dart';

/// Provides details about an AWS S3 Control Access Points.
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
/// const example = aws.s3control.getAccessPoints({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3control.get_access_points()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.S3Control.GetAccessPoints.Invoke();
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
/// _, err := s3control.GetAccessPoints(ctx, &s3control.GetAccessPointsArgs{}, nil)
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
/// import com.pulumi.aws.s3control.inputs.GetAccessPointsArgs;
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
/// final var example = S3controlFunctions.getAccessPoints(GetAccessPointsArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:s3control:getAccessPoints
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Filter by Bucket Name
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.s3control.getAccessPoints({
/// bucket: exampleAwsS3Bucket.bucket,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3control.get_access_points(bucket=example_aws_s3_bucket["bucket"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.S3Control.GetAccessPoints.Invoke(new()
/// {
/// Bucket = exampleAwsS3Bucket.Bucket,
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
/// _, err := s3control.GetAccessPoints(ctx, &s3control.GetAccessPointsArgs{
/// Bucket: pulumi.StringRef(exampleAwsS3Bucket.Bucket),
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
/// import com.pulumi.aws.s3control.inputs.GetAccessPointsArgs;
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
/// final var example = S3controlFunctions.getAccessPoints(GetAccessPointsArgs.builder()
/// .bucket(exampleAwsS3Bucket.bucket())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:s3control:getAccessPoints
/// arguments:
/// bucket: ${exampleAwsS3Bucket.bucket}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAccessPointsResult2> getAccessPoints2(
  GetAccessPointsArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3control/getAccessPoints:getAccessPoints',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAccessPointsResult2.fromMap(result);
}
