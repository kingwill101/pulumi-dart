import 'package:pulumi/pulumi.dart';
import 'get_bucket_object_lock_configuration_args.dart';
import 'get_bucket_object_lock_configuration_result.dart';

/// Provides details about an AWS S3 (Simple Storage) Bucket Object Lock Configuration.
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
/// const example = aws.s3.getBucketObjectLockConfiguration({
/// bucket: "example-bucket",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.get_bucket_object_lock_configuration(bucket="example-bucket")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.S3.GetBucketObjectLockConfiguration.Invoke(new()
/// {
/// Bucket = "example-bucket",
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
/// _, err := s3.LookupBucketObjectLockConfiguration(ctx, &s3.LookupBucketObjectLockConfigurationArgs{
/// Bucket: "example-bucket",
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
/// import com.pulumi.aws.s3.inputs.GetBucketObjectLockConfigurationArgs;
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
/// final var example = S3Functions.getBucketObjectLockConfiguration(GetBucketObjectLockConfigurationArgs.builder()
/// .bucket("example-bucket")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:s3:getBucketObjectLockConfiguration
/// arguments:
/// bucket: example-bucket
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetBucketObjectLockConfigurationResult> getBucketObjectLockConfiguration(
  GetBucketObjectLockConfigurationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getBucketObjectLockConfiguration:getBucketObjectLockConfiguration',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBucketObjectLockConfigurationResult.fromMap(result);
}
