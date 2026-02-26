import 'package:pulumi/pulumi.dart';
import 'get_group_args2.dart';
import 'get_group_result2.dart';

/// This data source can be used to fetch information about a specific
/// IAM group. By using this data source, you can reference IAM group
/// properties without having to hard code ARNs as input.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getGroup({
/// groupName: "an_example_group_name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_group(group_name="an_example_group_name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Iam.GetGroup.Invoke(new()
/// {
/// GroupName = "an_example_group_name",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.LookupGroup(ctx, &iam.LookupGroupArgs{
/// GroupName: "an_example_group_name",
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetGroupArgs;
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
/// final var example = IamFunctions.getGroup(GetGroupArgs.builder()
/// .groupName("an_example_group_name")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:iam:getGroup
/// arguments:
/// groupName: an_example_group_name
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetGroupResult2> getGroup2(
  GetGroupArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getGroup:getGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGroupResult2.fromMap(result);
}
