import 'package:pulumi/pulumi.dart';
import 'get_region_ssl_certificate_args.dart';
import 'get_region_ssl_certificate_result.dart';

/// Get info about a Region Google Compute SSL Certificate from its name.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myCert = gcp.compute.getRegionSslCertificate({
/// name: "my-cert",
/// });
/// export const certificate = myCert.then(myCert => myCert.certificate);
/// export const certificateId = myCert.then(myCert => myCert.certificateId);
/// export const selfLink = myCert.then(myCert => myCert.selfLink);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_cert = gcp.compute.get_region_ssl_certificate(name="my-cert")
/// pulumi.export("certificate", my_cert.certificate)
/// pulumi.export("certificateId", my_cert.certificate_id)
/// pulumi.export("selfLink", my_cert.self_link)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myCert = Gcp.Compute.GetRegionSslCertificate.Invoke(new()
/// {
/// Name = "my-cert",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["certificate"] = myCert.Apply(getRegionSslCertificateResult => getRegionSslCertificateResult.Certificate),
/// ["certificateId"] = myCert.Apply(getRegionSslCertificateResult => getRegionSslCertificateResult.CertificateId),
/// ["selfLink"] = myCert.Apply(getRegionSslCertificateResult => getRegionSslCertificateResult.SelfLink),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myCert, err := compute.LookupRegionSslCertificate(ctx, &compute.LookupRegionSslCertificateArgs{
/// Name: "my-cert",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("certificate", myCert.Certificate)
/// ctx.Export("certificateId", myCert.CertificateId)
/// ctx.Export("selfLink", myCert.SelfLink)
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetRegionSslCertificateArgs;
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
/// final var myCert = ComputeFunctions.getRegionSslCertificate(GetRegionSslCertificateArgs.builder()
/// .name("my-cert")
/// .build());
///
/// ctx.export("certificate", myCert.certificate());
/// ctx.export("certificateId", myCert.certificateId());
/// ctx.export("selfLink", myCert.selfLink());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myCert:
/// fn::invoke:
/// function: gcp:compute:getRegionSslCertificate
/// arguments:
/// name: my-cert
/// outputs:
/// certificate: ${myCert.certificate}
/// certificateId: ${myCert.certificateId}
/// selfLink: ${myCert.selfLink}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRegionSslCertificateResult> getRegionSslCertificate(
  GetRegionSslCertificateArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionSslCertificate:getRegionSslCertificate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionSslCertificateResult.fromMap(result);
}
