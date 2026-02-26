import 'package:pulumi/pulumi.dart';
import 'get_metastore_service_args.dart';
import 'get_metastore_service_result.dart';

/// Get a Dataproc Metastore service from Google Cloud by its id and location.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.dataproc.getMetastoreService({
/// serviceId: "foo-bar",
/// location: "global",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.dataproc.get_metastore_service(service_id="foo-bar",
/// location="global")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foo = Gcp.Dataproc.GetMetastoreService.Invoke(new()
/// {
/// ServiceId = "foo-bar",
/// Location = "global",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataproc.LookupMetastoreService(ctx, &dataproc.LookupMetastoreServiceArgs{
/// ServiceId: "foo-bar",
/// Location:  "global",
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
/// import com.pulumi.gcp.dataproc.DataprocFunctions;
/// import com.pulumi.gcp.dataproc.inputs.GetMetastoreServiceArgs;
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
/// final var foo = DataprocFunctions.getMetastoreService(GetMetastoreServiceArgs.builder()
/// .serviceId("foo-bar")
/// .location("global")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// foo:
/// fn::invoke:
/// function: gcp:dataproc:getMetastoreService
/// arguments:
/// serviceId: foo-bar
/// location: global
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetMetastoreServiceResult> getMetastoreService(
  GetMetastoreServiceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataproc/getMetastoreService:getMetastoreService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMetastoreServiceResult.fromMap(result);
}
