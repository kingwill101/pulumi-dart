import 'package:pulumi/pulumi.dart';
import 'get_connection_group_args.dart';
import 'get_connection_group_result.dart';

/// Use this data source to retrieve information about a CloudFront connection group.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.cloudfront.getConnectionGroup({
/// id: "EDFDVBD632BHDS5",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.cloudfront.get_connection_group(id="EDFDVBD632BHDS5")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.CloudFront.GetConnectionGroup.Invoke(new()
/// {
/// Id = "EDFDVBD632BHDS5",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudfront.LookupConnectionGroup(ctx, &cloudfront.LookupConnectionGroupArgs{
/// Id: pulumi.StringRef("EDFDVBD632BHDS5"),
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
/// import com.pulumi.aws.cloudfront.CloudfrontFunctions;
/// import com.pulumi.aws.cloudfront.inputs.GetConnectionGroupArgs;
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
/// final var test = CloudfrontFunctions.getConnectionGroup(GetConnectionGroupArgs.builder()
/// .id("EDFDVBD632BHDS5")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:cloudfront:getConnectionGroup
/// arguments:
/// id: EDFDVBD632BHDS5
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetConnectionGroupResult> getConnectionGroup(
  GetConnectionGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getConnectionGroup:getConnectionGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectionGroupResult.fromMap(result);
}
