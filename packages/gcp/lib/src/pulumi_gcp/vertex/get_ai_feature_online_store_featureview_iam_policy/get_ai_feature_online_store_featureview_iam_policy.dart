import 'package:pulumi/pulumi.dart';
import 'get_ai_feature_online_store_featureview_iam_policy_args.dart';
import 'get_ai_feature_online_store_featureview_iam_policy_result.dart';

/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.vertex.getAiFeatureOnlineStoreFeatureviewIamPolicy({
/// region: featureview.region,
/// featureOnlineStore: featureview.featureOnlineStore,
/// featureView: featureview.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.vertex.get_ai_feature_online_store_featureview_iam_policy(region=featureview["region"],
/// feature_online_store=featureview["featureOnlineStore"],
/// feature_view=featureview["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Vertex.GetAiFeatureOnlineStoreFeatureviewIamPolicy.Invoke(new()
/// {
/// Region = featureview.Region,
/// FeatureOnlineStore = featureview.FeatureOnlineStore,
/// FeatureView = featureview.Name,
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
/// _, err := vertex.LookupAiFeatureOnlineStoreFeatureviewIamPolicy(ctx, &vertex.LookupAiFeatureOnlineStoreFeatureviewIamPolicyArgs{
/// Region:             pulumi.StringRef(featureview.Region),
/// FeatureOnlineStore: featureview.FeatureOnlineStore,
/// FeatureView:        featureview.Name,
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
/// import com.pulumi.gcp.vertex.inputs.GetAiFeatureOnlineStoreFeatureviewIamPolicyArgs;
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
/// final var policy = VertexFunctions.getAiFeatureOnlineStoreFeatureviewIamPolicy(GetAiFeatureOnlineStoreFeatureviewIamPolicyArgs.builder()
/// .region(featureview.region())
/// .featureOnlineStore(featureview.featureOnlineStore())
/// .featureView(featureview.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:vertex:getAiFeatureOnlineStoreFeatureviewIamPolicy
/// arguments:
/// region: ${featureview.region}
/// featureOnlineStore: ${featureview.featureOnlineStore}
/// featureView: ${featureview.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAiFeatureOnlineStoreFeatureviewIamPolicyResult>
    getAiFeatureOnlineStoreFeatureviewIamPolicy(
  GetAiFeatureOnlineStoreFeatureviewIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vertex/getAiFeatureOnlineStoreFeatureviewIamPolicy:getAiFeatureOnlineStoreFeatureviewIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAiFeatureOnlineStoreFeatureviewIamPolicyResult.fromMap(result);
}
