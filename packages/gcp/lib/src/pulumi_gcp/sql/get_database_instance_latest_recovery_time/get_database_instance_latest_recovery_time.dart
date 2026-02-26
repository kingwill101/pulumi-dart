import 'package:pulumi/pulumi.dart';
import 'get_database_instance_latest_recovery_time_args.dart';
import 'get_database_instance_latest_recovery_time_result.dart';

/// Get Latest Recovery Time for a given instance. For more information see the
/// [official documentation](https://cloud.google.com/sql/)
/// and
/// [API](https://cloud.google.com/sql/docs/postgres/backup-recovery/pitr#get-the-latest-recovery-time).
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.sql.getDatabaseInstanceLatestRecoveryTime({
/// instance: "sample-instance",
/// });
/// export const latestRecoveryTime = _default;
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.sql.get_database_instance_latest_recovery_time(instance="sample-instance")
/// pulumi.export("latestRecoveryTime", default)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = Gcp.Sql.GetDatabaseInstanceLatestRecoveryTime.Invoke(new()
/// {
/// Instance = "sample-instance",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["latestRecoveryTime"] = @default,
/// };
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
/// _default, err := sql.GetDatabaseInstanceLatestRecoveryTime(ctx, &sql.GetDatabaseInstanceLatestRecoveryTimeArgs{
/// Instance: "sample-instance",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("latestRecoveryTime", _default)
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
/// import com.pulumi.gcp.sql.inputs.GetDatabaseInstanceLatestRecoveryTimeArgs;
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
/// final var default = SqlFunctions.getDatabaseInstanceLatestRecoveryTime(GetDatabaseInstanceLatestRecoveryTimeArgs.builder()
/// .instance("sample-instance")
/// .build());
///
/// ctx.export("latestRecoveryTime", default_);
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// default:
/// fn::invoke:
/// function: gcp:sql:getDatabaseInstanceLatestRecoveryTime
/// arguments:
/// instance: sample-instance
/// outputs:
/// latestRecoveryTime: ${default}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDatabaseInstanceLatestRecoveryTimeResult>
    getDatabaseInstanceLatestRecoveryTime(
  GetDatabaseInstanceLatestRecoveryTimeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sql/getDatabaseInstanceLatestRecoveryTime:getDatabaseInstanceLatestRecoveryTime',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatabaseInstanceLatestRecoveryTimeResult.fromMap(result);
}
