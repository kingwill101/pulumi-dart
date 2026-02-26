import 'package:pulumi/pulumi.dart';
import 'get_dicom_store_iam_policy_args.dart';
import 'get_dicom_store_iam_policy_result.dart';

/// Retrieves the current IAM policy data for a Google Cloud Healthcare DICOM store.
///
/// ## example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.healthcare.getDicomStoreIamPolicy({
/// dicomStoreId: dicomStore.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.healthcare.get_dicom_store_iam_policy(dicom_store_id=dicom_store["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foo = Gcp.Healthcare.GetDicomStoreIamPolicy.Invoke(new()
/// {
/// DicomStoreId = dicomStore.Id,
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
/// _, err := healthcare.LookupDicomStoreIamPolicy(ctx, &healthcare.LookupDicomStoreIamPolicyArgs{
/// DicomStoreId: dicomStore.Id,
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
/// import com.pulumi.gcp.healthcare.inputs.GetDicomStoreIamPolicyArgs;
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
/// final var foo = HealthcareFunctions.getDicomStoreIamPolicy(GetDicomStoreIamPolicyArgs.builder()
/// .dicomStoreId(dicomStore.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// foo:
/// fn::invoke:
/// function: gcp:healthcare:getDicomStoreIamPolicy
/// arguments:
/// dicomStoreId: ${dicomStore.id}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDicomStoreIamPolicyResult> getDicomStoreIamPolicy(
  GetDicomStoreIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:healthcare/getDicomStoreIamPolicy:getDicomStoreIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDicomStoreIamPolicyResult.fromMap(result);
}
