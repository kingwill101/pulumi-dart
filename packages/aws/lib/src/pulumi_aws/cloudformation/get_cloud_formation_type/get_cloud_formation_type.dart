import 'package:pulumi/pulumi.dart';
import 'get_cloud_formation_type_args.dart';
import 'get_cloud_formation_type_result.dart';

/// Provides details about a CloudFormation Type.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.cloudformation.getCloudFormationType({
/// type: "RESOURCE",
/// typeName: "AWS::Athena::WorkGroup",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudformation.get_cloud_formation_type(type="RESOURCE",
/// type_name="AWS::Athena::WorkGroup")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.CloudFormation.GetCloudFormationType.Invoke(new()
/// {
/// Type = "RESOURCE",
/// TypeName = "AWS::Athena::WorkGroup",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudformation"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudformation.LookupCloudFormationType(ctx, &cloudformation.LookupCloudFormationTypeArgs{
/// Type:     pulumi.StringRef("RESOURCE"),
/// TypeName: pulumi.StringRef("AWS::Athena::WorkGroup"),
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
/// import com.pulumi.aws.cloudformation.CloudformationFunctions;
/// import com.pulumi.aws.cloudformation.inputs.GetCloudFormationTypeArgs;
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
/// final var example = CloudformationFunctions.getCloudFormationType(GetCloudFormationTypeArgs.builder()
/// .type("RESOURCE")
/// .typeName("AWS::Athena::WorkGroup")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:cloudformation:getCloudFormationType
/// arguments:
/// type: RESOURCE
/// typeName: AWS::Athena::WorkGroup
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetCloudFormationTypeResult> getCloudFormationType(
  GetCloudFormationTypeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudformation/getCloudFormationType:getCloudFormationType',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCloudFormationTypeResult.fromMap(result);
}
