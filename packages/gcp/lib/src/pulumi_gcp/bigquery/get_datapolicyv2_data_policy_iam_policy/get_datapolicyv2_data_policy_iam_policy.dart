import 'package:pulumi/pulumi.dart';
import 'get_datapolicyv2_data_policy_iam_policy_args.dart';
import 'get_datapolicyv2_data_policy_iam_policy_result.dart';

/// Retrieves the current IAM policy data for datapolicy
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.bigquery.getDatapolicyv2DataPolicyIamPolicy({
/// project: basicDataPolicy.project,
/// location: basicDataPolicy.location,
/// dataPolicyId: basicDataPolicy.dataPolicyId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.bigquery.get_datapolicyv2_data_policy_iam_policy(project=basic_data_policy["project"],
/// location=basic_data_policy["location"],
/// data_policy_id=basic_data_policy["dataPolicyId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.BigQuery.GetDatapolicyv2DataPolicyIamPolicy.Invoke(new()
/// {
/// Project = basicDataPolicy.Project,
/// Location = basicDataPolicy.Location,
/// DataPolicyId = basicDataPolicy.DataPolicyId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigquery.LookupDatapolicyv2DataPolicyIamPolicy(ctx, &bigquery.LookupDatapolicyv2DataPolicyIamPolicyArgs{
/// Project:      pulumi.StringRef(basicDataPolicy.Project),
/// Location:     pulumi.StringRef(basicDataPolicy.Location),
/// DataPolicyId: basicDataPolicy.DataPolicyId,
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
/// import com.pulumi.gcp.bigquery.BigqueryFunctions;
/// import com.pulumi.gcp.bigquery.inputs.GetDatapolicyv2DataPolicyIamPolicyArgs;
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
/// final var policy = BigqueryFunctions.getDatapolicyv2DataPolicyIamPolicy(GetDatapolicyv2DataPolicyIamPolicyArgs.builder()
/// .project(basicDataPolicy.project())
/// .location(basicDataPolicy.location())
/// .dataPolicyId(basicDataPolicy.dataPolicyId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:bigquery:getDatapolicyv2DataPolicyIamPolicy
/// arguments:
/// project: ${basicDataPolicy.project}
/// location: ${basicDataPolicy.location}
/// dataPolicyId: ${basicDataPolicy.dataPolicyId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDatapolicyv2DataPolicyIamPolicyResult>
    getDatapolicyv2DataPolicyIamPolicy(
  GetDatapolicyv2DataPolicyIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquery/getDatapolicyv2DataPolicyIamPolicy:getDatapolicyv2DataPolicyIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatapolicyv2DataPolicyIamPolicyResult.fromMap(result);
}
