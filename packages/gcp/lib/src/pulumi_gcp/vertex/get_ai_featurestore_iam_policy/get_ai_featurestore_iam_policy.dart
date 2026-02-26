import 'package:pulumi/pulumi.dart';
import 'get_ai_featurestore_iam_policy_args.dart';
import 'get_ai_featurestore_iam_policy_result.dart';

/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.vertex.getAiFeaturestoreIamPolicy({
/// project: featurestore.project,
/// region: featurestore.region,
/// featurestore: featurestore.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.vertex.get_ai_featurestore_iam_policy(project=featurestore["project"],
/// region=featurestore["region"],
/// featurestore=featurestore["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Vertex.GetAiFeaturestoreIamPolicy.Invoke(new()
/// {
/// Project = featurestore.Project,
/// Region = featurestore.Region,
/// Featurestore = featurestore.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vertex.GetAiFeaturestoreIamPolicy(ctx, &vertex.GetAiFeaturestoreIamPolicyArgs{
/// Project:      pulumi.StringRef(featurestore.Project),
/// Region:       pulumi.StringRef(featurestore.Region),
/// Featurestore: featurestore.Name,
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
/// import com.pulumi.gcp.vertex.VertexFunctions;
/// import com.pulumi.gcp.vertex.inputs.GetAiFeaturestoreIamPolicyArgs;
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
/// final var policy = VertexFunctions.getAiFeaturestoreIamPolicy(GetAiFeaturestoreIamPolicyArgs.builder()
/// .project(featurestore.project())
/// .region(featurestore.region())
/// .featurestore(featurestore.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:vertex:getAiFeaturestoreIamPolicy
/// arguments:
/// project: ${featurestore.project}
/// region: ${featurestore.region}
/// featurestore: ${featurestore.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAiFeaturestoreIamPolicyResult> getAiFeaturestoreIamPolicy(
  GetAiFeaturestoreIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vertex/getAiFeaturestoreIamPolicy:getAiFeaturestoreIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAiFeaturestoreIamPolicyResult.fromMap(result);
}
