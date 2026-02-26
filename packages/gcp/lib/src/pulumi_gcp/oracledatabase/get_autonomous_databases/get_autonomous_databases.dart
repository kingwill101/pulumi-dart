import 'package:pulumi/pulumi.dart';
import 'get_autonomous_databases_args.dart';
import 'get_autonomous_databases_result.dart';

/// List all AutonomousDatabases.
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
/// const my_adbs = gcp.oracledatabase.getAutonomousDatabases({
/// location: "us-east4",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_adbs = gcp.oracledatabase.get_autonomous_databases(location="us-east4")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_adbs = Gcp.OracleDatabase.GetAutonomousDatabases.Invoke(new()
/// {
/// Location = "us-east4",
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
/// _, err := oracledatabase.GetAutonomousDatabases(ctx, &oracledatabase.GetAutonomousDatabasesArgs{
/// Location: "us-east4",
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
/// import com.pulumi.gcp.oracledatabase.inputs.GetAutonomousDatabasesArgs;
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
/// final var my-adbs = OracledatabaseFunctions.getAutonomousDatabases(GetAutonomousDatabasesArgs.builder()
/// .location("us-east4")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-adbs:
/// fn::invoke:
/// function: gcp:oracledatabase:getAutonomousDatabases
/// arguments:
/// location: us-east4
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAutonomousDatabasesResult> getAutonomousDatabases(
  GetAutonomousDatabasesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getAutonomousDatabases:getAutonomousDatabases',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAutonomousDatabasesResult.fromMap(result);
}
