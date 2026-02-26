import 'package:pulumi/pulumi.dart';
import 'get_supported_database_flags_args.dart';
import 'get_supported_database_flags_result.dart';

/// Use this data source to get information about the supported alloydb database flags in a location.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const qa = gcp.alloydb.getSupportedDatabaseFlags({
/// location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// qa = gcp.alloydb.get_supported_database_flags(location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var qa = Gcp.Alloydb.GetSupportedDatabaseFlags.Invoke(new()
/// {
/// Location = "us-central1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/alloydb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := alloydb.GetSupportedDatabaseFlags(ctx, &alloydb.GetSupportedDatabaseFlagsArgs{
/// Location: "us-central1",
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
/// import com.pulumi.gcp.alloydb.AlloydbFunctions;
/// import com.pulumi.gcp.alloydb.inputs.GetSupportedDatabaseFlagsArgs;
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
/// final var qa = AlloydbFunctions.getSupportedDatabaseFlags(GetSupportedDatabaseFlagsArgs.builder()
/// .location("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// qa:
/// fn::invoke:
/// function: gcp:alloydb:getSupportedDatabaseFlags
/// arguments:
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSupportedDatabaseFlagsResult> getSupportedDatabaseFlags(
  GetSupportedDatabaseFlagsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:alloydb/getSupportedDatabaseFlags:getSupportedDatabaseFlags',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSupportedDatabaseFlagsResult.fromMap(result);
}
