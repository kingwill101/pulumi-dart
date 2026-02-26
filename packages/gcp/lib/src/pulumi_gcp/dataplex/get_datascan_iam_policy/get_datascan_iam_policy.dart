import 'package:pulumi/pulumi.dart';
import 'get_datascan_iam_policy_args.dart';
import 'get_datascan_iam_policy_result.dart';

/// Retrieves the current IAM policy data for datascan
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dataplex.getDatascanIamPolicy({
/// project: basicProfile.project,
/// location: basicProfile.location,
/// dataScanId: basicProfile.dataScanId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataplex.get_datascan_iam_policy(project=basic_profile["project"],
/// location=basic_profile["location"],
/// data_scan_id=basic_profile["dataScanId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.DataPlex.GetDatascanIamPolicy.Invoke(new()
/// {
/// Project = basicProfile.Project,
/// Location = basicProfile.Location,
/// DataScanId = basicProfile.DataScanId,
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
/// _, err := dataplex.LookupDatascanIamPolicy(ctx, &dataplex.LookupDatascanIamPolicyArgs{
/// Project:    pulumi.StringRef(basicProfile.Project),
/// Location:   pulumi.StringRef(basicProfile.Location),
/// DataScanId: basicProfile.DataScanId,
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
/// import com.pulumi.gcp.dataplex.inputs.GetDatascanIamPolicyArgs;
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
/// final var policy = DataplexFunctions.getDatascanIamPolicy(GetDatascanIamPolicyArgs.builder()
/// .project(basicProfile.project())
/// .location(basicProfile.location())
/// .dataScanId(basicProfile.dataScanId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:dataplex:getDatascanIamPolicy
/// arguments:
/// project: ${basicProfile.project}
/// location: ${basicProfile.location}
/// dataScanId: ${basicProfile.dataScanId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDatascanIamPolicyResult> getDatascanIamPolicy(
  GetDatascanIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getDatascanIamPolicy:getDatascanIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatascanIamPolicyResult.fromMap(result);
}
