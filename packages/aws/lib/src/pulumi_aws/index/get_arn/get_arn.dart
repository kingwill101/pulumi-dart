import 'package:pulumi/pulumi.dart';
import 'get_arn_args.dart';
import 'get_arn_result.dart';

/// Parses an ARN into its constituent parts.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const dbInstance = aws.getArn({
/// arn: "arn:aws:rds:eu-west-1:123456789012:db:mysql-db",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// db_instance = aws.get_arn(arn="arn:aws:rds:eu-west-1:123456789012:db:mysql-db")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var dbInstance = Aws.GetArn.Invoke(new()
/// {
/// Arn = "arn:aws:rds:eu-west-1:123456789012:db:mysql-db",
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
/// _, err := aws.GetArn(ctx, &aws.GetArnArgs{
/// Arn: "arn:aws:rds:eu-west-1:123456789012:db:mysql-db",
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
/// import com.pulumi.aws.inputs.GetArnArgs;
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
/// final var dbInstance = AwsFunctions.getArn(GetArnArgs.builder()
/// .arn("arn:aws:rds:eu-west-1:123456789012:db:mysql-db")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// dbInstance:
/// fn::invoke:
/// function: aws:getArn
/// arguments:
/// arn: arn:aws:rds:eu-west-1:123456789012:db:mysql-db
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetArnResult> getArn(
  GetArnArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getArn:getArn',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetArnResult.fromMap(result);
}
