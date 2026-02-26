import 'package:pulumi/pulumi.dart';
import 'get_fhir_store_iam_policy_args.dart';
import 'get_fhir_store_iam_policy_result.dart';

/// Retrieves the current IAM policy data for a Google Cloud Healthcare FHIR store.
///
/// ## example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.healthcare.getFhirStoreIamPolicy({
/// fhirStoreId: fhirStore.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.healthcare.get_fhir_store_iam_policy(fhir_store_id=fhir_store["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foo = Gcp.Healthcare.GetFhirStoreIamPolicy.Invoke(new()
/// {
/// FhirStoreId = fhirStore.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := healthcare.LookupFhirStoreIamPolicy(ctx, &healthcare.LookupFhirStoreIamPolicyArgs{
/// FhirStoreId: fhirStore.Id,
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
/// import com.pulumi.gcp.healthcare.HealthcareFunctions;
/// import com.pulumi.gcp.healthcare.inputs.GetFhirStoreIamPolicyArgs;
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
/// final var foo = HealthcareFunctions.getFhirStoreIamPolicy(GetFhirStoreIamPolicyArgs.builder()
/// .fhirStoreId(fhirStore.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// foo:
/// fn::invoke:
/// function: gcp:healthcare:getFhirStoreIamPolicy
/// arguments:
/// fhirStoreId: ${fhirStore.id}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetFhirStoreIamPolicyResult> getFhirStoreIamPolicy(
  GetFhirStoreIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:healthcare/getFhirStoreIamPolicy:getFhirStoreIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFhirStoreIamPolicyResult.fromMap(result);
}
