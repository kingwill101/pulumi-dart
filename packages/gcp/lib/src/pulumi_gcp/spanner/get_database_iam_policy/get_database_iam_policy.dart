import 'package:pulumi/pulumi.dart';
import 'get_database_iam_policy_args.dart';
import 'get_database_iam_policy_result.dart';

/// Retrieves the current IAM policy data for a Spanner database.
///
/// ## example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.spanner.getDatabaseIamPolicy({
/// project: database.project,
/// database: database.name,
/// instance: database.instance,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.spanner.get_database_iam_policy(project=database["project"],
/// database=database["name"],
/// instance=database["instance"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foo = Gcp.Spanner.GetDatabaseIamPolicy.Invoke(new()
/// {
/// Project = database.Project,
/// Database = database.Name,
/// Instance = database.Instance,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := spanner.GetDatabaseIamPolicy(ctx, &spanner.GetDatabaseIamPolicyArgs{
/// Project:  pulumi.StringRef(database.Project),
/// Database: database.Name,
/// Instance: database.Instance,
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
/// import com.pulumi.gcp.spanner.SpannerFunctions;
/// import com.pulumi.gcp.spanner.inputs.GetDatabaseIamPolicyArgs;
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
/// final var foo = SpannerFunctions.getDatabaseIamPolicy(GetDatabaseIamPolicyArgs.builder()
/// .project(database.project())
/// .database(database.name())
/// .instance(database.instance())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// foo:
/// fn::invoke:
/// function: gcp:spanner:getDatabaseIamPolicy
/// arguments:
/// project: ${database.project}
/// database: ${database.name}
/// instance: ${database.instance}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDatabaseIamPolicyResult> getDatabaseIamPolicy(
  GetDatabaseIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:spanner/getDatabaseIamPolicy:getDatabaseIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatabaseIamPolicyResult.fromMap(result);
}
