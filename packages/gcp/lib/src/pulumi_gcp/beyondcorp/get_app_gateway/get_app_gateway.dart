import 'package:pulumi/pulumi.dart';
import 'get_app_gateway_args.dart';
import 'get_app_gateway_result.dart';

/// Get information about a Google BeyondCorp App Gateway.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_beyondcorp_app_gateway = gcp.beyondcorp.getAppGateway({
/// name: "my-beyondcorp-app-gateway",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_beyondcorp_app_gateway = gcp.beyondcorp.get_app_gateway(name="my-beyondcorp-app-gateway")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_beyondcorp_app_gateway = Gcp.Beyondcorp.GetAppGateway.Invoke(new()
/// {
/// Name = "my-beyondcorp-app-gateway",
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
/// _, err := beyondcorp.LookupAppGateway(ctx, &beyondcorp.LookupAppGatewayArgs{
/// Name: "my-beyondcorp-app-gateway",
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
/// import com.pulumi.gcp.beyondcorp.inputs.GetAppGatewayArgs;
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
/// final var my-beyondcorp-app-gateway = BeyondcorpFunctions.getAppGateway(GetAppGatewayArgs.builder()
/// .name("my-beyondcorp-app-gateway")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-beyondcorp-app-gateway:
/// fn::invoke:
/// function: gcp:beyondcorp:getAppGateway
/// arguments:
/// name: my-beyondcorp-app-gateway
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAppGatewayResult> getAppGateway(
  GetAppGatewayArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:beyondcorp/getAppGateway:getAppGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAppGatewayResult.fromMap(result);
}
