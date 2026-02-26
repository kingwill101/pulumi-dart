import 'package:pulumi/pulumi.dart';
import 'get_backup_run_args.dart';
import 'get_backup_run_result.dart';

/// Use this data source to get information about a Cloud SQL instance backup run.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const backup = gcp.sql.getBackupRun({
/// instance: main.name,
/// mostRecent: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// backup = gcp.sql.get_backup_run(instance=main["name"],
/// most_recent=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var backup = Gcp.Sql.GetBackupRun.Invoke(new()
/// {
/// Instance = main.Name,
/// MostRecent = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/sql"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sql.GetBackupRun(ctx, &sql.GetBackupRunArgs{
/// Instance:   main.Name,
/// MostRecent: pulumi.BoolRef(true),
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
/// import com.pulumi.gcp.sql.SqlFunctions;
/// import com.pulumi.gcp.sql.inputs.GetBackupRunArgs;
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
/// final var backup = SqlFunctions.getBackupRun(GetBackupRunArgs.builder()
/// .instance(main.name())
/// .mostRecent(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// backup:
/// fn::invoke:
/// function: gcp:sql:getBackupRun
/// arguments:
/// instance: ${main.name}
/// mostRecent: true
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetBackupRunResult> getBackupRun(
  GetBackupRunArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sql/getBackupRun:getBackupRun',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackupRunResult.fromMap(result);
}
