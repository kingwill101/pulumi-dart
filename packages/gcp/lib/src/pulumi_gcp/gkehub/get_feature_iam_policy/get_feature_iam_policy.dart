import 'package:pulumi/pulumi.dart';
import 'get_feature_iam_policy_args.dart';
import 'get_feature_iam_policy_result.dart';

/// Retrieves the current IAM policy data for feature
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.gkehub.getFeatureIamPolicy({
/// project: feature.project,
/// location: feature.location,
/// name: feature.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.gkehub.get_feature_iam_policy(project=feature["project"],
/// location=feature["location"],
/// name=feature["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.GkeHub.GetFeatureIamPolicy.Invoke(new()
/// {
/// Project = feature.Project,
/// Location = feature.Location,
/// Name = feature.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gkehub.LookupFeatureIamPolicy(ctx, &gkehub.LookupFeatureIamPolicyArgs{
/// Project:  pulumi.StringRef(feature.Project),
/// Location: pulumi.StringRef(feature.Location),
/// Name:     feature.Name,
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
/// import com.pulumi.gcp.gkehub.GkehubFunctions;
/// import com.pulumi.gcp.gkehub.inputs.GetFeatureIamPolicyArgs;
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
/// final var policy = GkehubFunctions.getFeatureIamPolicy(GetFeatureIamPolicyArgs.builder()
/// .project(feature.project())
/// .location(feature.location())
/// .name(feature.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:gkehub:getFeatureIamPolicy
/// arguments:
/// project: ${feature.project}
/// location: ${feature.location}
/// name: ${feature.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetFeatureIamPolicyResult> getFeatureIamPolicy(
  GetFeatureIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gkehub/getFeatureIamPolicy:getFeatureIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFeatureIamPolicyResult.fromMap(result);
}
