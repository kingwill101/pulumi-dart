import 'package:pulumi/pulumi.dart';
import 'get_ai_feature_online_store_iam_policy_args.dart';
import 'get_ai_feature_online_store_iam_policy_result.dart';

/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.vertex.getAiFeatureOnlineStoreIamPolicy({
/// region: featureOnlineStore.region,
/// featureOnlineStore: featureOnlineStore.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.vertex.get_ai_feature_online_store_iam_policy(region=feature_online_store["region"],
/// feature_online_store=feature_online_store["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Vertex.GetAiFeatureOnlineStoreIamPolicy.Invoke(new()
/// {
/// Region = featureOnlineStore.Region,
/// FeatureOnlineStore = featureOnlineStore.Name,
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
/// _, err := vertex.LookupAiFeatureOnlineStoreIamPolicy(ctx, &vertex.LookupAiFeatureOnlineStoreIamPolicyArgs{
/// Region:             pulumi.StringRef(featureOnlineStore.Region),
/// FeatureOnlineStore: featureOnlineStore.Name,
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
/// import com.pulumi.gcp.vertex.inputs.GetAiFeatureOnlineStoreIamPolicyArgs;
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
/// final var policy = VertexFunctions.getAiFeatureOnlineStoreIamPolicy(GetAiFeatureOnlineStoreIamPolicyArgs.builder()
/// .region(featureOnlineStore.region())
/// .featureOnlineStore(featureOnlineStore.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:vertex:getAiFeatureOnlineStoreIamPolicy
/// arguments:
/// region: ${featureOnlineStore.region}
/// featureOnlineStore: ${featureOnlineStore.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAiFeatureOnlineStoreIamPolicyResult> getAiFeatureOnlineStoreIamPolicy(
  GetAiFeatureOnlineStoreIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vertex/getAiFeatureOnlineStoreIamPolicy:getAiFeatureOnlineStoreIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAiFeatureOnlineStoreIamPolicyResult.fromMap(result);
}
