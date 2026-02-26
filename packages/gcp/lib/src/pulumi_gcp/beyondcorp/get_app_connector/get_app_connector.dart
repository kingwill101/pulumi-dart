import 'package:pulumi/pulumi.dart';
import 'get_app_connector_args.dart';
import 'get_app_connector_result.dart';

/// Get information about a Google BeyondCorp App Connector.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_beyondcorp_app_connector = gcp.beyondcorp.getAppConnector({
/// name: "my-beyondcorp-app-connector",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_beyondcorp_app_connector = gcp.beyondcorp.get_app_connector(name="my-beyondcorp-app-connector")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_beyondcorp_app_connector = Gcp.Beyondcorp.GetAppConnector.Invoke(new()
/// {
/// Name = "my-beyondcorp-app-connector",
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
/// _, err := beyondcorp.LookupAppConnector(ctx, &beyondcorp.LookupAppConnectorArgs{
/// Name: "my-beyondcorp-app-connector",
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
/// import com.pulumi.gcp.beyondcorp.inputs.GetAppConnectorArgs;
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
/// final var my-beyondcorp-app-connector = BeyondcorpFunctions.getAppConnector(GetAppConnectorArgs.builder()
/// .name("my-beyondcorp-app-connector")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-beyondcorp-app-connector:
/// fn::invoke:
/// function: gcp:beyondcorp:getAppConnector
/// arguments:
/// name: my-beyondcorp-app-connector
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAppConnectorResult> getAppConnector(
  GetAppConnectorArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:beyondcorp/getAppConnector:getAppConnector',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAppConnectorResult.fromMap(result);
}
