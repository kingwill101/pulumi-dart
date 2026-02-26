import 'package:pulumi/pulumi.dart';
import 'get_app_connection_args.dart';
import 'get_app_connection_result.dart';

/// Get information about a Google BeyondCorp App Connection.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_beyondcorp_app_connection = gcp.beyondcorp.getAppConnection({
/// name: "my-beyondcorp-app-connection",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_beyondcorp_app_connection = gcp.beyondcorp.get_app_connection(name="my-beyondcorp-app-connection")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_beyondcorp_app_connection = Gcp.Beyondcorp.GetAppConnection.Invoke(new()
/// {
/// Name = "my-beyondcorp-app-connection",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/beyondcorp"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := beyondcorp.LookupAppConnection(ctx, &beyondcorp.LookupAppConnectionArgs{
/// Name: "my-beyondcorp-app-connection",
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
/// import com.pulumi.gcp.beyondcorp.BeyondcorpFunctions;
/// import com.pulumi.gcp.beyondcorp.inputs.GetAppConnectionArgs;
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
/// final var my-beyondcorp-app-connection = BeyondcorpFunctions.getAppConnection(GetAppConnectionArgs.builder()
/// .name("my-beyondcorp-app-connection")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-beyondcorp-app-connection:
/// fn::invoke:
/// function: gcp:beyondcorp:getAppConnection
/// arguments:
/// name: my-beyondcorp-app-connection
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAppConnectionResult> getAppConnection(
  GetAppConnectionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:beyondcorp/getAppConnection:getAppConnection',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAppConnectionResult.fromMap(result);
}
