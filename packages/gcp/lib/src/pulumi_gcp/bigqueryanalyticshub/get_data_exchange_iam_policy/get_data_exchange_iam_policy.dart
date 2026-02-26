import 'package:pulumi/pulumi.dart';
import 'get_data_exchange_iam_policy_args.dart';
import 'get_data_exchange_iam_policy_result.dart';

/// Retrieves the current IAM policy data for dataexchange
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.bigqueryanalyticshub.getDataExchangeIamPolicy({
/// project: dataExchange.project,
/// location: dataExchange.location,
/// dataExchangeId: dataExchange.dataExchangeId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.bigqueryanalyticshub.get_data_exchange_iam_policy(project=data_exchange["project"],
/// location=data_exchange["location"],
/// data_exchange_id=data_exchange["dataExchangeId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.BigQueryAnalyticsHub.GetDataExchangeIamPolicy.Invoke(new()
/// {
/// Project = dataExchange.Project,
/// Location = dataExchange.Location,
/// DataExchangeId = dataExchange.DataExchangeId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigqueryanalyticshub.LookupDataExchangeIamPolicy(ctx, &bigqueryanalyticshub.LookupDataExchangeIamPolicyArgs{
/// Project:        pulumi.StringRef(dataExchange.Project),
/// Location:       pulumi.StringRef(dataExchange.Location),
/// DataExchangeId: dataExchange.DataExchangeId,
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
/// import com.pulumi.gcp.bigqueryanalyticshub.BigqueryanalyticshubFunctions;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.GetDataExchangeIamPolicyArgs;
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
/// final var policy = BigqueryanalyticshubFunctions.getDataExchangeIamPolicy(GetDataExchangeIamPolicyArgs.builder()
/// .project(dataExchange.project())
/// .location(dataExchange.location())
/// .dataExchangeId(dataExchange.dataExchangeId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:bigqueryanalyticshub:getDataExchangeIamPolicy
/// arguments:
/// project: ${dataExchange.project}
/// location: ${dataExchange.location}
/// dataExchangeId: ${dataExchange.dataExchangeId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDataExchangeIamPolicyResult> getDataExchangeIamPolicy(
  GetDataExchangeIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigqueryanalyticshub/getDataExchangeIamPolicy:getDataExchangeIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDataExchangeIamPolicyResult.fromMap(result);
}
