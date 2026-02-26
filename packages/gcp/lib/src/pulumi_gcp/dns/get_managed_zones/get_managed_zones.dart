import 'package:pulumi/pulumi.dart';
import 'get_managed_zones_args.dart';
import 'get_managed_zones_result.dart';

/// Provides access to a list of zones within Google Cloud DNS.
/// For more information see
/// [the official documentation](https://cloud.google.com/dns/zones/)
/// and
/// [API](https://cloud.google.com/dns/api/v1/managedZones).
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const zones = gcp.dns.getManagedZones({
/// project: "my-project-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// zones = gcp.dns.get_managed_zones(project="my-project-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var zones = Gcp.Dns.GetManagedZones.Invoke(new()
/// {
/// Project = "my-project-id",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dns.GetManagedZones(ctx, &dns.GetManagedZonesArgs{
/// Project: pulumi.StringRef("my-project-id"),
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
/// import com.pulumi.gcp.dns.DnsFunctions;
/// import com.pulumi.gcp.dns.inputs.GetManagedZonesArgs;
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
/// final var zones = DnsFunctions.getManagedZones(GetManagedZonesArgs.builder()
/// .project("my-project-id")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// zones:
/// fn::invoke:
/// function: gcp:dns:getManagedZones
/// arguments:
/// project: my-project-id
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetManagedZonesResult> getManagedZones(
  GetManagedZonesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dns/getManagedZones:getManagedZones',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetManagedZonesResult.fromMap(result);
}
