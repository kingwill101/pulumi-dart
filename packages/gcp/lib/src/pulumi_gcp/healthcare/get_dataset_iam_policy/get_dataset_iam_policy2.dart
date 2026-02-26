import 'package:pulumi/pulumi.dart';
import 'get_dataset_iam_policy_args2.dart';
import 'get_dataset_iam_policy_result2.dart';

/// Retrieves the current IAM policy data for a Google Cloud Healthcare dataset.
///
/// ## example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.healthcare.getDatasetIamPolicy({
/// datasetId: dataset.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.healthcare.get_dataset_iam_policy(dataset_id=dataset["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foo = Gcp.Healthcare.GetDatasetIamPolicy.Invoke(new()
/// {
/// DatasetId = dataset.Id,
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
/// _, err := healthcare.LookupDatasetIamPolicy(ctx, &healthcare.LookupDatasetIamPolicyArgs{
/// DatasetId: dataset.Id,
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
/// import com.pulumi.gcp.healthcare.inputs.GetDatasetIamPolicyArgs;
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
/// final var foo = HealthcareFunctions.getDatasetIamPolicy(GetDatasetIamPolicyArgs.builder()
/// .datasetId(dataset.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// foo:
/// fn::invoke:
/// function: gcp:healthcare:getDatasetIamPolicy
/// arguments:
/// datasetId: ${dataset.id}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDatasetIamPolicyResult2> getDatasetIamPolicy2(
  GetDatasetIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:healthcare/getDatasetIamPolicy:getDatasetIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatasetIamPolicyResult2.fromMap(result);
}
