import 'package:pulumi/pulumi.dart';
import 'get_glossary_iam_policy_args.dart';
import 'get_glossary_iam_policy_result.dart';

/// Retrieves the current IAM policy data for glossary
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dataplex.getGlossaryIamPolicy({
/// project: glossaryTestId.project,
/// location: glossaryTestId.location,
/// glossaryId: glossaryTestId.glossaryId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataplex.get_glossary_iam_policy(project=glossary_test_id["project"],
/// location=glossary_test_id["location"],
/// glossary_id=glossary_test_id["glossaryId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.DataPlex.GetGlossaryIamPolicy.Invoke(new()
/// {
/// Project = glossaryTestId.Project,
/// Location = glossaryTestId.Location,
/// GlossaryId = glossaryTestId.GlossaryId,
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
/// _, err := dataplex.LookupGlossaryIamPolicy(ctx, &dataplex.LookupGlossaryIamPolicyArgs{
/// Project:    pulumi.StringRef(glossaryTestId.Project),
/// Location:   pulumi.StringRef(glossaryTestId.Location),
/// GlossaryId: glossaryTestId.GlossaryId,
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
/// import com.pulumi.gcp.dataplex.inputs.GetGlossaryIamPolicyArgs;
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
/// final var policy = DataplexFunctions.getGlossaryIamPolicy(GetGlossaryIamPolicyArgs.builder()
/// .project(glossaryTestId.project())
/// .location(glossaryTestId.location())
/// .glossaryId(glossaryTestId.glossaryId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:dataplex:getGlossaryIamPolicy
/// arguments:
/// project: ${glossaryTestId.project}
/// location: ${glossaryTestId.location}
/// glossaryId: ${glossaryTestId.glossaryId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetGlossaryIamPolicyResult> getGlossaryIamPolicy(
  GetGlossaryIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getGlossaryIamPolicy:getGlossaryIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGlossaryIamPolicyResult.fromMap(result);
}
