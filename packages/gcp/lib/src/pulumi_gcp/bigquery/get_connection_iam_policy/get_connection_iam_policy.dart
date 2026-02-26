import 'package:pulumi/pulumi.dart';
import 'get_connection_iam_policy_args.dart';
import 'get_connection_iam_policy_result.dart';

/// Retrieves the current IAM policy data for connection
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.bigquery.getConnectionIamPolicy({
/// project: connection.project,
/// location: connection.location,
/// connectionId: connection.connectionId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.bigquery.get_connection_iam_policy(project=connection["project"],
/// location=connection["location"],
/// connection_id=connection["connectionId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.BigQuery.GetConnectionIamPolicy.Invoke(new()
/// {
/// Project = connection.Project,
/// Location = connection.Location,
/// ConnectionId = connection.ConnectionId,
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
/// _, err := bigquery.LookupConnectionIamPolicy(ctx, &bigquery.LookupConnectionIamPolicyArgs{
/// Project:      pulumi.StringRef(connection.Project),
/// Location:     pulumi.StringRef(connection.Location),
/// ConnectionId: connection.ConnectionId,
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
/// import com.pulumi.gcp.bigquery.inputs.GetConnectionIamPolicyArgs;
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
/// final var policy = BigqueryFunctions.getConnectionIamPolicy(GetConnectionIamPolicyArgs.builder()
/// .project(connection.project())
/// .location(connection.location())
/// .connectionId(connection.connectionId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:bigquery:getConnectionIamPolicy
/// arguments:
/// project: ${connection.project}
/// location: ${connection.location}
/// connectionId: ${connection.connectionId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetConnectionIamPolicyResult> getConnectionIamPolicy(
  GetConnectionIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquery/getConnectionIamPolicy:getConnectionIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectionIamPolicyResult.fromMap(result);
}
