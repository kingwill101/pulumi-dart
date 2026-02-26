import 'package:pulumi/pulumi.dart';
import 'get_database_args2.dart';
import 'get_database_result2.dart';

/// Use this data source to get information about a database in a Cloud SQL instance.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const qa = gcp.sql.getDatabase({
/// name: "test-sql-database",
/// instance: main.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// qa = gcp.sql.get_database(name="test-sql-database",
/// instance=main["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var qa = Gcp.Sql.GetDatabase.Invoke(new()
/// {
/// Name = "test-sql-database",
/// Instance = main.Name,
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
/// _, err := sql.LookupDatabase(ctx, &sql.LookupDatabaseArgs{
/// Name:     "test-sql-database",
/// Instance: main.Name,
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
/// import com.pulumi.gcp.sql.inputs.GetDatabaseArgs;
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
/// final var qa = SqlFunctions.getDatabase(GetDatabaseArgs.builder()
/// .name("test-sql-database")
/// .instance(main.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// qa:
/// fn::invoke:
/// function: gcp:sql:getDatabase
/// arguments:
/// name: test-sql-database
/// instance: ${main.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDatabaseResult2> getDatabase2(
  GetDatabaseArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sql/getDatabase:getDatabase',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatabaseResult2.fromMap(result);
}
