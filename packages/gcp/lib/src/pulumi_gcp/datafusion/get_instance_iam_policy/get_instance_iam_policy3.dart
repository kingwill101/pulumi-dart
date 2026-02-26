import 'package:pulumi/pulumi.dart';
import 'get_instance_iam_policy_args3.dart';
import 'get_instance_iam_policy_result3.dart';

/// Retrieves the current IAM policy data for instance
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.datafusion.getInstanceIamPolicy({
/// project: basicInstance.project,
/// region: basicInstance.region,
/// name: basicInstance.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.datafusion.get_instance_iam_policy(project=basic_instance["project"],
/// region=basic_instance["region"],
/// name=basic_instance["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.DataFusion.GetInstanceIamPolicy.Invoke(new()
/// {
/// Project = basicInstance.Project,
/// Region = basicInstance.Region,
/// Name = basicInstance.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datafusion"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := datafusion.GetInstanceIamPolicy(ctx, &datafusion.GetInstanceIamPolicyArgs{
/// Project: pulumi.StringRef(basicInstance.Project),
/// Region:  pulumi.StringRef(basicInstance.Region),
/// Name:    basicInstance.Name,
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
/// import com.pulumi.gcp.datafusion.DatafusionFunctions;
/// import com.pulumi.gcp.datafusion.inputs.GetInstanceIamPolicyArgs;
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
/// final var policy = DatafusionFunctions.getInstanceIamPolicy(GetInstanceIamPolicyArgs.builder()
/// .project(basicInstance.project())
/// .region(basicInstance.region())
/// .name(basicInstance.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:datafusion:getInstanceIamPolicy
/// arguments:
/// project: ${basicInstance.project}
/// region: ${basicInstance.region}
/// name: ${basicInstance.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetInstanceIamPolicyResult3> getInstanceIamPolicy3(
  GetInstanceIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:datafusion/getInstanceIamPolicy:getInstanceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult3.fromMap(result);
}
