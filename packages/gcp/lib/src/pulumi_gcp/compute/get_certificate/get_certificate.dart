import 'package:pulumi/pulumi.dart';
import 'get_certificate_args.dart';
import 'get_certificate_result.dart';

/// Get info about a Google Compute SSL Certificate from its name.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myCert = gcp.compute.getCertificate({
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
/// my_cert = gcp.compute.get_certificate(name="my-cert")
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
/// var myCert = Gcp.Compute.GetCertificate.Invoke(new()
/// {
/// Name = "my-cert",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["certificate"] = myCert.Apply(getCertificateResult => getCertificateResult.Certificate),
/// ["certificateId"] = myCert.Apply(getCertificateResult => getCertificateResult.CertificateId),
/// ["selfLink"] = myCert.Apply(getCertificateResult => getCertificateResult.SelfLink),
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
/// myCert, err := compute.GetCertificate(ctx, &compute.GetCertificateArgs{
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
/// import com.pulumi.gcp.compute.inputs.GetCertificateArgs;
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
/// final var myCert = ComputeFunctions.getCertificate(GetCertificateArgs.builder()
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
/// function: gcp:compute:getCertificate
/// arguments:
/// name: my-cert
/// outputs:
/// certificate: ${myCert.certificate}
/// certificateId: ${myCert.certificateId}
/// selfLink: ${myCert.selfLink}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetCertificateResult> getCertificate(
  GetCertificateArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getCertificate:getCertificate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult.fromMap(result);
}
