import 'package:pulumi/pulumi.dart';
import 'get_authority_args.dart';
import 'get_authority_result.dart';

/// Get info about a Google CAS Certificate Authority.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.certificateauthority.getAuthority({
/// location: "us-west1",
/// pool: "pool-name",
/// certificateAuthorityId: "ca-id",
/// });
/// export const csr = _default.then(_default => _default.pemCsr);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.certificateauthority.get_authority(location="us-west1",
/// pool="pool-name",
/// certificate_authority_id="ca-id")
/// pulumi.export("csr", default.pem_csr)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = Gcp.CertificateAuthority.GetAuthority.Invoke(new()
/// {
/// Location = "us-west1",
/// Pool = "pool-name",
/// CertificateAuthorityId = "ca-id",
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["csr"] = @default.Apply(@default => @default.Apply(getAuthorityResult => getAuthorityResult.PemCsr)),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/certificateauthority"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := certificateauthority.LookupAuthority(ctx, &certificateauthority.LookupAuthorityArgs{
/// Location:               pulumi.StringRef("us-west1"),
/// Pool:                   pulumi.StringRef("pool-name"),
/// CertificateAuthorityId: pulumi.StringRef("ca-id"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("csr", _default.PemCsr)
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
/// import com.pulumi.gcp.certificateauthority.CertificateauthorityFunctions;
/// import com.pulumi.gcp.certificateauthority.inputs.GetAuthorityArgs;
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
/// final var default = CertificateauthorityFunctions.getAuthority(GetAuthorityArgs.builder()
/// .location("us-west1")
/// .pool("pool-name")
/// .certificateAuthorityId("ca-id")
/// .build());
///
/// ctx.export("csr", default_.pemCsr());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// default:
/// fn::invoke:
/// function: gcp:certificateauthority:getAuthority
/// arguments:
/// location: us-west1
/// pool: pool-name
/// certificateAuthorityId: ca-id
/// outputs:
/// csr: ${default.pemCsr}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAuthorityResult> getAuthority(
  GetAuthorityArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:certificateauthority/getAuthority:getAuthority',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAuthorityResult.fromMap(result);
}
