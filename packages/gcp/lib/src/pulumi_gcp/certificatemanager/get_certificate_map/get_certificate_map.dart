import 'package:pulumi/pulumi.dart';
import 'get_certificate_map_args.dart';
import 'get_certificate_map_result.dart';

/// Get info about a Google Certificate Manager Certificate Map resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.certificatemanager.getCertificateMap({
/// name: "cert-map",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.certificatemanager.get_certificate_map(name="cert-map")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = Gcp.CertificateManager.GetCertificateMap.Invoke(new()
/// {
/// Name = "cert-map",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificatemanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := certificatemanager.GetCertificateMap(ctx, &certificatemanager.GetCertificateMapArgs{
/// Name: "cert-map",
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
/// import com.pulumi.gcp.certificatemanager.CertificatemanagerFunctions;
/// import com.pulumi.gcp.certificatemanager.inputs.GetCertificateMapArgs;
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
/// final var default = CertificatemanagerFunctions.getCertificateMap(GetCertificateMapArgs.builder()
/// .name("cert-map")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// default:
/// fn::invoke:
/// function: gcp:certificatemanager:getCertificateMap
/// arguments:
/// name: cert-map
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetCertificateMapResult> getCertificateMap(
  GetCertificateMapArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:certificatemanager/getCertificateMap:getCertificateMap',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCertificateMapResult.fromMap(result);
}
