import 'package:pulumi/pulumi.dart';
import 'get_user_hierarchy_structure_args.dart';
import 'get_user_hierarchy_structure_result.dart';

/// Provides details about a specific Amazon Connect User Hierarchy Structure
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.connect.getUserHierarchyStructure({
/// instanceId: testAwsConnectInstance.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.connect.get_user_hierarchy_structure(instance_id=test_aws_connect_instance["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.Connect.GetUserHierarchyStructure.Invoke(new()
/// {
/// InstanceId = testAwsConnectInstance.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := connect.LookupUserHierarchyStructure(ctx, &connect.LookupUserHierarchyStructureArgs{
/// InstanceId: testAwsConnectInstance.Id,
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
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetUserHierarchyStructureArgs;
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
/// final var test = ConnectFunctions.getUserHierarchyStructure(GetUserHierarchyStructureArgs.builder()
/// .instanceId(testAwsConnectInstance.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:connect:getUserHierarchyStructure
/// arguments:
/// instanceId: ${testAwsConnectInstance.id}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetUserHierarchyStructureResult> getUserHierarchyStructure(
  GetUserHierarchyStructureArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getUserHierarchyStructure:getUserHierarchyStructure',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUserHierarchyStructureResult.fromMap(result);
}
