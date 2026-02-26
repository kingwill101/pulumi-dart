import 'package:pulumi/pulumi.dart';
import 'get_autonomous_database_args.dart';
import 'get_autonomous_database_result.dart';

/// Get information about an AutonomousDatabase.
///
/// For more information see the
/// [API](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.autonomousDatabases).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_instance = gcp.oracledatabase.getAutonomousDatabase({
/// location: "us-east4",
/// autonomousDatabaseId: "autonomous_database_id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_instance = gcp.oracledatabase.get_autonomous_database(location="us-east4",
/// autonomous_database_id="autonomous_database_id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_instance = Gcp.OracleDatabase.GetAutonomousDatabase.Invoke(new()
/// {
/// Location = "us-east4",
/// AutonomousDatabaseId = "autonomous_database_id",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := oracledatabase.LookupAutonomousDatabase(ctx, &oracledatabase.LookupAutonomousDatabaseArgs{
/// Location:             "us-east4",
/// AutonomousDatabaseId: "autonomous_database_id",
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
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetAutonomousDatabaseArgs;
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
/// final var my-instance = OracledatabaseFunctions.getAutonomousDatabase(GetAutonomousDatabaseArgs.builder()
/// .location("us-east4")
/// .autonomousDatabaseId("autonomous_database_id")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-instance:
/// fn::invoke:
/// function: gcp:oracledatabase:getAutonomousDatabase
/// arguments:
/// location: us-east4
/// autonomousDatabaseId: autonomous_database_id
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAutonomousDatabaseResult> getAutonomousDatabase(
  GetAutonomousDatabaseArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getAutonomousDatabase:getAutonomousDatabase',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAutonomousDatabaseResult.fromMap(result);
}
