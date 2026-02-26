import 'package:pulumi/pulumi.dart';
import 'get_forwarding_rules_args.dart';
import 'get_forwarding_rules_result.dart';

/// List all networks in a specified Google Cloud project.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_forwarding_rules = gcp.compute.getForwardingRules({
/// project: "my-cloud-project",
/// region: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_forwarding_rules = gcp.compute.get_forwarding_rules(project="my-cloud-project",
/// region="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_forwarding_rules = Gcp.Compute.GetForwardingRules.Invoke(new()
/// {
/// Project = "my-cloud-project",
/// Region = "us-central1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.GetForwardingRules(ctx, &compute.GetForwardingRulesArgs{
/// Project: pulumi.StringRef("my-cloud-project"),
/// Region:  pulumi.StringRef("us-central1"),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetForwardingRulesArgs;
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
/// final var my-forwarding-rules = ComputeFunctions.getForwardingRules(GetForwardingRulesArgs.builder()
/// .project("my-cloud-project")
/// .region("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-forwarding-rules:
/// fn::invoke:
/// function: gcp:compute:getForwardingRules
/// arguments:
/// project: my-cloud-project
/// region: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetForwardingRulesResult> getForwardingRules(
  GetForwardingRulesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getForwardingRules:getForwardingRules',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetForwardingRulesResult.fromMap(result);
}
