import 'package:pulumi/pulumi.dart';
import 'get_aspect_type_iam_policy_args.dart';
import 'get_aspect_type_iam_policy_result.dart';

/// Retrieves the current IAM policy data for aspecttype
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dataplex.getAspectTypeIamPolicy({
/// project: testAspectTypeBasic.project,
/// location: testAspectTypeBasic.location,
/// aspectTypeId: testAspectTypeBasic.aspectTypeId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataplex.get_aspect_type_iam_policy(project=test_aspect_type_basic["project"],
/// location=test_aspect_type_basic["location"],
/// aspect_type_id=test_aspect_type_basic["aspectTypeId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.DataPlex.GetAspectTypeIamPolicy.Invoke(new()
/// {
/// Project = testAspectTypeBasic.Project,
/// Location = testAspectTypeBasic.Location,
/// AspectTypeId = testAspectTypeBasic.AspectTypeId,
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
/// _, err := dataplex.LookupAspectTypeIamPolicy(ctx, &dataplex.LookupAspectTypeIamPolicyArgs{
/// Project:      pulumi.StringRef(testAspectTypeBasic.Project),
/// Location:     pulumi.StringRef(testAspectTypeBasic.Location),
/// AspectTypeId: testAspectTypeBasic.AspectTypeId,
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
/// import com.pulumi.gcp.dataplex.inputs.GetAspectTypeIamPolicyArgs;
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
/// final var policy = DataplexFunctions.getAspectTypeIamPolicy(GetAspectTypeIamPolicyArgs.builder()
/// .project(testAspectTypeBasic.project())
/// .location(testAspectTypeBasic.location())
/// .aspectTypeId(testAspectTypeBasic.aspectTypeId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:dataplex:getAspectTypeIamPolicy
/// arguments:
/// project: ${testAspectTypeBasic.project}
/// location: ${testAspectTypeBasic.location}
/// aspectTypeId: ${testAspectTypeBasic.aspectTypeId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAspectTypeIamPolicyResult> getAspectTypeIamPolicy(
  GetAspectTypeIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getAspectTypeIamPolicy:getAspectTypeIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAspectTypeIamPolicyResult.fromMap(result);
}
