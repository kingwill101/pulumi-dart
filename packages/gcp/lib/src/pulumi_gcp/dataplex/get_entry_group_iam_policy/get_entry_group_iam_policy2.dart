import 'package:pulumi/pulumi.dart';
import 'get_entry_group_iam_policy_args2.dart';
import 'get_entry_group_iam_policy_result2.dart';

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
/// const policy = gcp.dataplex.getEntryGroupIamPolicy({
/// project: testEntryGroupBasic.project,
/// location: testEntryGroupBasic.location,
/// entryGroupId: testEntryGroupBasic.entryGroupId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataplex.get_entry_group_iam_policy(project=test_entry_group_basic["project"],
/// location=test_entry_group_basic["location"],
/// entry_group_id=test_entry_group_basic["entryGroupId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.DataPlex.GetEntryGroupIamPolicy.Invoke(new()
/// {
/// Project = testEntryGroupBasic.Project,
/// Location = testEntryGroupBasic.Location,
/// EntryGroupId = testEntryGroupBasic.EntryGroupId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataplex.LookupEntryGroupIamPolicy(ctx, &dataplex.LookupEntryGroupIamPolicyArgs{
/// Project:      pulumi.StringRef(testEntryGroupBasic.Project),
/// Location:     pulumi.StringRef(testEntryGroupBasic.Location),
/// EntryGroupId: testEntryGroupBasic.EntryGroupId,
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
/// import com.pulumi.gcp.dataplex.DataplexFunctions;
/// import com.pulumi.gcp.dataplex.inputs.GetEntryGroupIamPolicyArgs;
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
/// final var policy = DataplexFunctions.getEntryGroupIamPolicy(GetEntryGroupIamPolicyArgs.builder()
/// .project(testEntryGroupBasic.project())
/// .location(testEntryGroupBasic.location())
/// .entryGroupId(testEntryGroupBasic.entryGroupId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:dataplex:getEntryGroupIamPolicy
/// arguments:
/// project: ${testEntryGroupBasic.project}
/// location: ${testEntryGroupBasic.location}
/// entryGroupId: ${testEntryGroupBasic.entryGroupId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetEntryGroupIamPolicyResult2> getEntryGroupIamPolicy2(
  GetEntryGroupIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getEntryGroupIamPolicy:getEntryGroupIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEntryGroupIamPolicyResult2.fromMap(result);
}
