import 'package:pulumi/pulumi.dart';
import 'get_table_iam_policy_args.dart';
import 'get_table_iam_policy_result.dart';

/// Retrieves the current IAM policy data for table
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.bigquery.getTableIamPolicy({
/// project: test.project,
/// datasetId: test.datasetId,
/// tableId: test.tableId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.bigquery.get_table_iam_policy(project=test["project"],
/// dataset_id=test["datasetId"],
/// table_id=test["tableId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.BigQuery.GetTableIamPolicy.Invoke(new()
/// {
/// Project = test.Project,
/// DatasetId = test.DatasetId,
/// TableId = test.TableId,
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
/// _, err := bigquery.GetTableIamPolicy(ctx, &bigquery.GetTableIamPolicyArgs{
/// Project:   pulumi.StringRef(test.Project),
/// DatasetId: test.DatasetId,
/// TableId:   test.TableId,
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
/// import com.pulumi.gcp.bigquery.inputs.GetTableIamPolicyArgs;
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
/// final var policy = BigqueryFunctions.getTableIamPolicy(GetTableIamPolicyArgs.builder()
/// .project(test.project())
/// .datasetId(test.datasetId())
/// .tableId(test.tableId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:bigquery:getTableIamPolicy
/// arguments:
/// project: ${test.project}
/// datasetId: ${test.datasetId}
/// tableId: ${test.tableId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTableIamPolicyResult> getTableIamPolicy(
  GetTableIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquery/getTableIamPolicy:getTableIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTableIamPolicyResult.fromMap(result);
}
