import 'package:pulumi/pulumi.dart';
import 'get_discovered_service_args.dart';
import 'get_discovered_service_result.dart';

/// Get information about a discovered service from its uri.
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_service = gcp.apphub.getDiscoveredService({
/// location: "my-location",
/// serviceUri: "my-service-uri",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_service = gcp.apphub.get_discovered_service(location="my-location",
/// service_uri="my-service-uri")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_service = Gcp.Apphub.GetDiscoveredService.Invoke(new()
/// {
/// Location = "my-location",
/// ServiceUri = "my-service-uri",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apphub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apphub.GetDiscoveredService(ctx, &apphub.GetDiscoveredServiceArgs{
/// Location:   "my-location",
/// ServiceUri: "my-service-uri",
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
/// import com.pulumi.gcp.apphub.ApphubFunctions;
/// import com.pulumi.gcp.apphub.inputs.GetDiscoveredServiceArgs;
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
/// final var my-service = ApphubFunctions.getDiscoveredService(GetDiscoveredServiceArgs.builder()
/// .location("my-location")
/// .serviceUri("my-service-uri")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-service:
/// fn::invoke:
/// function: gcp:apphub:getDiscoveredService
/// arguments:
/// location: my-location
/// serviceUri: my-service-uri
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDiscoveredServiceResult> getDiscoveredService(
  GetDiscoveredServiceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:apphub/getDiscoveredService:getDiscoveredService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDiscoveredServiceResult.fromMap(result);
}
