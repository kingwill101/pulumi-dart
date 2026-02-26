import 'package:pulumi/pulumi.dart';
import 'get_managed_zone_iam_policy_args.dart';
import 'get_managed_zone_iam_policy_result.dart';

/// Retrieves the current IAM policy data for managedzone
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dns.getManagedZoneIamPolicy({
/// project: _default.project,
/// managedZone: _default.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dns.get_managed_zone_iam_policy(project=default["project"],
/// managed_zone=default["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Dns.GetManagedZoneIamPolicy.Invoke(new()
/// {
/// Project = @default.Project,
/// ManagedZone = @default.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dns.GetManagedZoneIamPolicy(ctx, &dns.GetManagedZoneIamPolicyArgs{
/// Project:     pulumi.StringRef(_default.Project),
/// ManagedZone: _default.Name,
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
/// import com.pulumi.gcp.dns.DnsFunctions;
/// import com.pulumi.gcp.dns.inputs.GetManagedZoneIamPolicyArgs;
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
/// final var policy = DnsFunctions.getManagedZoneIamPolicy(GetManagedZoneIamPolicyArgs.builder()
/// .project(default_.project())
/// .managedZone(default_.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:dns:getManagedZoneIamPolicy
/// arguments:
/// project: ${default.project}
/// managedZone: ${default.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetManagedZoneIamPolicyResult> getManagedZoneIamPolicy(
  GetManagedZoneIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dns/getManagedZoneIamPolicy:getManagedZoneIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetManagedZoneIamPolicyResult.fromMap(result);
}
