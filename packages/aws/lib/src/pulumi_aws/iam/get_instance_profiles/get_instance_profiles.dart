import 'package:pulumi/pulumi.dart';
import 'get_instance_profiles_args.dart';
import 'get_instance_profiles_result.dart';

/// This data source can be used to fetch information about all
/// IAM instance profiles under a role. By using this data source, you can reference IAM
/// instance profile properties without having to hard code ARNs as input.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getInstanceProfiles({
/// roleName: "an_example_iam_role_name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_instance_profiles(role_name="an_example_iam_role_name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Iam.GetInstanceProfiles.Invoke(new()
/// {
/// RoleName = "an_example_iam_role_name",
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
/// _, err := iam.GetInstanceProfiles(ctx, &iam.GetInstanceProfilesArgs{
/// RoleName: "an_example_iam_role_name",
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
/// import com.pulumi.aws.iam.inputs.GetInstanceProfilesArgs;
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
/// final var example = IamFunctions.getInstanceProfiles(GetInstanceProfilesArgs.builder()
/// .roleName("an_example_iam_role_name")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:iam:getInstanceProfiles
/// arguments:
/// roleName: an_example_iam_role_name
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetInstanceProfilesResult> getInstanceProfiles(
  GetInstanceProfilesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getInstanceProfiles:getInstanceProfiles',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceProfilesResult.fromMap(result);
}
