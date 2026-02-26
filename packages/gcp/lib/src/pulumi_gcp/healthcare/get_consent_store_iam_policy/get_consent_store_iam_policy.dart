import 'package:pulumi/pulumi.dart';
import 'get_consent_store_iam_policy_args.dart';
import 'get_consent_store_iam_policy_result.dart';

/// Retrieves the current IAM policy data for consentstore
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.healthcare.getConsentStoreIamPolicy({
/// dataset: my_consent.dataset,
/// consentStoreId: my_consent.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.healthcare.get_consent_store_iam_policy(dataset=my_consent["dataset"],
/// consent_store_id=my_consent["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Healthcare.GetConsentStoreIamPolicy.Invoke(new()
/// {
/// Dataset = my_consent.Dataset,
/// ConsentStoreId = my_consent.Name,
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
/// _, err := healthcare.LookupConsentStoreIamPolicy(ctx, &healthcare.LookupConsentStoreIamPolicyArgs{
/// Dataset:        my_consent.Dataset,
/// ConsentStoreId: my_consent.Name,
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
/// import com.pulumi.gcp.healthcare.inputs.GetConsentStoreIamPolicyArgs;
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
/// final var policy = HealthcareFunctions.getConsentStoreIamPolicy(GetConsentStoreIamPolicyArgs.builder()
/// .dataset(my_consent.dataset())
/// .consentStoreId(my_consent.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:healthcare:getConsentStoreIamPolicy
/// arguments:
/// dataset: ${["my-consent"].dataset}
/// consentStoreId: ${["my-consent"].name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetConsentStoreIamPolicyResult> getConsentStoreIamPolicy(
  GetConsentStoreIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:healthcare/getConsentStoreIamPolicy:getConsentStoreIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConsentStoreIamPolicyResult.fromMap(result);
}
