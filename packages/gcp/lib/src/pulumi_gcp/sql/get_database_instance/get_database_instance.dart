import 'package:pulumi/pulumi.dart';
import 'get_database_instance_args.dart';
import 'get_database_instance_result.dart';

/// Use this data source to get information about a Cloud SQL instance.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const qa = gcp.sql.getDatabaseInstance({
/// name: "test-sql-instance",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// qa = gcp.sql.get_database_instance(name="test-sql-instance")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var qa = Gcp.Sql.GetDatabaseInstance.Invoke(new()
/// {
/// Name = "test-sql-instance",
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
/// _, err := sql.LookupDatabaseInstance(ctx, &sql.LookupDatabaseInstanceArgs{
/// Name: "test-sql-instance",
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
/// import com.pulumi.gcp.sql.inputs.GetDatabaseInstanceArgs;
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
/// final var qa = SqlFunctions.getDatabaseInstance(GetDatabaseInstanceArgs.builder()
/// .name("test-sql-instance")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// qa:
/// fn::invoke:
/// function: gcp:sql:getDatabaseInstance
/// arguments:
/// name: test-sql-instance
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDatabaseInstanceResult> getDatabaseInstance(
  GetDatabaseInstanceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sql/getDatabaseInstance:getDatabaseInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatabaseInstanceResult.fromMap(result);
}
