import 'package:pulumi/pulumi.dart';
import 'get_feature_args.dart';
import 'get_feature_result.dart';

/// Retrieves the details of a specific GKE Hub Feature. Use this data source to retrieve the feature's configuration and state.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.gkehub.getFeature({
/// location: "global",
/// name: "servicemesh",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.gkehub.get_feature(location="global",
/// name="servicemesh")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Gcp.GkeHub.GetFeature.Invoke(new()
/// {
/// Location = "global",
/// Name = "servicemesh",
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
/// _, err := gkehub.LookupFeature(ctx, &gkehub.LookupFeatureArgs{
/// Location: "global",
/// Name:     "servicemesh",
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
/// import com.pulumi.gcp.gkehub.inputs.GetFeatureArgs;
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
/// final var example = GkehubFunctions.getFeature(GetFeatureArgs.builder()
/// .location("global")
/// .name("servicemesh")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: gcp:gkehub:getFeature
/// arguments:
/// location: global
/// name: servicemesh
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetFeatureResult> getFeature(
  GetFeatureArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gkehub/getFeature:getFeature',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFeatureResult.fromMap(result);
}
