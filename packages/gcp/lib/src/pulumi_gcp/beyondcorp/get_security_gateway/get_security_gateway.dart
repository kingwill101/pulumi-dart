import 'package:pulumi/pulumi.dart';
import 'get_security_gateway_args.dart';
import 'get_security_gateway_result.dart';

/// Get information about a Google BeyondCorp Security Gateway.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_beyondcorp_security_gateway = gcp.beyondcorp.getSecurityGateway({
/// securityGatewayId: "my-beyondcorp-security-gateway",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_beyondcorp_security_gateway = gcp.beyondcorp.get_security_gateway(security_gateway_id="my-beyondcorp-security-gateway")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_beyondcorp_security_gateway = Gcp.Beyondcorp.GetSecurityGateway.Invoke(new()
/// {
/// SecurityGatewayId = "my-beyondcorp-security-gateway",
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
/// _, err := beyondcorp.LookupSecurityGateway(ctx, &beyondcorp.LookupSecurityGatewayArgs{
/// SecurityGatewayId: "my-beyondcorp-security-gateway",
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
/// import com.pulumi.gcp.beyondcorp.inputs.GetSecurityGatewayArgs;
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
/// final var my-beyondcorp-security-gateway = BeyondcorpFunctions.getSecurityGateway(GetSecurityGatewayArgs.builder()
/// .securityGatewayId("my-beyondcorp-security-gateway")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-beyondcorp-security-gateway:
/// fn::invoke:
/// function: gcp:beyondcorp:getSecurityGateway
/// arguments:
/// securityGatewayId: my-beyondcorp-security-gateway
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSecurityGatewayResult> getSecurityGateway(
  GetSecurityGatewayArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:beyondcorp/getSecurityGateway:getSecurityGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecurityGatewayResult.fromMap(result);
}
