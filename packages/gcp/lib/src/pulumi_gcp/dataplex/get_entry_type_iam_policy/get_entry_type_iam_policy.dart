import 'package:pulumi/pulumi.dart';
import 'get_entry_type_iam_policy_args.dart';
import 'get_entry_type_iam_policy_result.dart';

/// Retrieves the current IAM policy data for entrytype
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dataplex.getEntryTypeIamPolicy({
/// project: testEntryTypeBasic.project,
/// location: testEntryTypeBasic.location,
/// entryTypeId: testEntryTypeBasic.entryTypeId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataplex.get_entry_type_iam_policy(project=test_entry_type_basic["project"],
/// location=test_entry_type_basic["location"],
/// entry_type_id=test_entry_type_basic["entryTypeId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.DataPlex.GetEntryTypeIamPolicy.Invoke(new()
/// {
/// Project = testEntryTypeBasic.Project,
/// Location = testEntryTypeBasic.Location,
/// EntryTypeId = testEntryTypeBasic.EntryTypeId,
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
/// _, err := dataplex.LookupEntryTypeIamPolicy(ctx, &dataplex.LookupEntryTypeIamPolicyArgs{
/// Project:     pulumi.StringRef(testEntryTypeBasic.Project),
/// Location:    pulumi.StringRef(testEntryTypeBasic.Location),
/// EntryTypeId: testEntryTypeBasic.EntryTypeId,
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
/// import com.pulumi.gcp.dataplex.inputs.GetEntryTypeIamPolicyArgs;
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
/// final var policy = DataplexFunctions.getEntryTypeIamPolicy(GetEntryTypeIamPolicyArgs.builder()
/// .project(testEntryTypeBasic.project())
/// .location(testEntryTypeBasic.location())
/// .entryTypeId(testEntryTypeBasic.entryTypeId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:dataplex:getEntryTypeIamPolicy
/// arguments:
/// project: ${testEntryTypeBasic.project}
/// location: ${testEntryTypeBasic.location}
/// entryTypeId: ${testEntryTypeBasic.entryTypeId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetEntryTypeIamPolicyResult> getEntryTypeIamPolicy(
  GetEntryTypeIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getEntryTypeIamPolicy:getEntryTypeIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEntryTypeIamPolicyResult.fromMap(result);
}
