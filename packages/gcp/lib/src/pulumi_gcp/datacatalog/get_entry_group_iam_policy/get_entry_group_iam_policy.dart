import 'package:pulumi/pulumi.dart';
import 'get_entry_group_iam_policy_args.dart';
import 'get_entry_group_iam_policy_result.dart';

/// Retrieves the current IAM policy data for entrygroup
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.datacatalog.getEntryGroupIamPolicy({
/// entryGroup: basicEntryGroup.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.datacatalog.get_entry_group_iam_policy(entry_group=basic_entry_group["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.DataCatalog.GetEntryGroupIamPolicy.Invoke(new()
/// {
/// EntryGroup = basicEntryGroup.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datacatalog"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := datacatalog.LookupEntryGroupIamPolicy(ctx, &datacatalog.LookupEntryGroupIamPolicyArgs{
/// EntryGroup: basicEntryGroup.Name,
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
/// import com.pulumi.gcp.datacatalog.DatacatalogFunctions;
/// import com.pulumi.gcp.datacatalog.inputs.GetEntryGroupIamPolicyArgs;
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
/// final var policy = DatacatalogFunctions.getEntryGroupIamPolicy(GetEntryGroupIamPolicyArgs.builder()
/// .entryGroup(basicEntryGroup.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:datacatalog:getEntryGroupIamPolicy
/// arguments:
/// entryGroup: ${basicEntryGroup.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetEntryGroupIamPolicyResult> getEntryGroupIamPolicy(
  GetEntryGroupIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:datacatalog/getEntryGroupIamPolicy:getEntryGroupIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEntryGroupIamPolicyResult.fromMap(result);
}
