import 'package:pulumi/pulumi.dart';
import 'get_databases_args.dart';
import 'get_databases_result.dart';

/// Use this data source to get information about a list of databases in a Cloud SQL instance.
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const qa = gcp.sql.getDatabases({
/// instance: main.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// qa = gcp.sql.get_databases(instance=main["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var qa = Gcp.Sql.GetDatabases.Invoke(new()
/// {
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
/// _, err := sql.GetDatabases(ctx, &sql.GetDatabasesArgs{
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
/// import com.pulumi.gcp.sql.inputs.GetDatabasesArgs;
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
/// final var qa = SqlFunctions.getDatabases(GetDatabasesArgs.builder()
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
/// function: gcp:sql:getDatabases
/// arguments:
/// instance: ${main.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDatabasesResult> getDatabases(
  GetDatabasesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sql/getDatabases:getDatabases',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatabasesResult.fromMap(result);
}
