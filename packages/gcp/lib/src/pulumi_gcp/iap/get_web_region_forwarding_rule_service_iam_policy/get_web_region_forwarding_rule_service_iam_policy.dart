import 'package:pulumi/pulumi.dart';
import 'get_web_region_forwarding_rule_service_iam_policy_args.dart';
import 'get_web_region_forwarding_rule_service_iam_policy_result.dart';

/// Retrieves the current IAM policy data for webregionforwardingruleservice
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getWebRegionForwardingRuleServiceIamPolicy({
/// project: _default.project,
/// region: _default.region,
/// forwardingRuleRegionServiceName: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_web_region_forwarding_rule_service_iam_policy(project=default["project"],
/// region=default["region"],
/// forwarding_rule_region_service_name=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Iap.GetWebRegionForwardingRuleServiceIamPolicy.Invoke(new()
/// {
/// Project = @default.Project,
/// Region = @default.Region,
/// ForwardingRuleRegionServiceName = @default.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.LookupWebRegionForwardingRuleServiceIamPolicy(ctx, &iap.LookupWebRegionForwardingRuleServiceIamPolicyArgs{
/// Project:                         pulumi.StringRef(_default.Project),
/// Region:                          pulumi.StringRef(_default.Region),
/// ForwardingRuleRegionServiceName: _default.Name,
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
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetWebRegionForwardingRuleServiceIamPolicyArgs;
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
/// final var policy = IapFunctions.getWebRegionForwardingRuleServiceIamPolicy(GetWebRegionForwardingRuleServiceIamPolicyArgs.builder()
/// .project(default_.project())
/// .region(default_.region())
/// .forwardingRuleRegionServiceName(default_.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:iap:getWebRegionForwardingRuleServiceIamPolicy
/// arguments:
/// project: ${default.project}
/// region: ${default.region}
/// forwardingRuleRegionServiceName: ${default.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetWebRegionForwardingRuleServiceIamPolicyResult>
    getWebRegionForwardingRuleServiceIamPolicy(
  GetWebRegionForwardingRuleServiceIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getWebRegionForwardingRuleServiceIamPolicy:getWebRegionForwardingRuleServiceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWebRegionForwardingRuleServiceIamPolicyResult.fromMap(result);
}
