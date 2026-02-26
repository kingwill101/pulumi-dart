import 'package:pulumi/pulumi.dart';
import 'get_dns_authorization_args.dart';
import 'get_dns_authorization_result.dart';

/// Use this data source to get information about a Certificate Manager DNS Authorization. For more details, see the [API documentation](https://cloud.google.com/certificate-manager/docs/reference/certificate-manager/rest/v1/projects.locations.dnsAuthorizations).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.certificatemanager.getDnsAuthorization({
/// name: "my-dns-auth",
/// location: "global",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.certificatemanager.get_dns_authorization(name="my-dns-auth",
/// location="global")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = Gcp.CertificateManager.GetDnsAuthorization.Invoke(new()
/// {
/// Name = "my-dns-auth",
/// Location = "global",
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
/// _, err := certificatemanager.LookupDnsAuthorization(ctx, &certificatemanager.LookupDnsAuthorizationArgs{
/// Name:     "my-dns-auth",
/// Location: pulumi.StringRef("global"),
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
/// import com.pulumi.gcp.certificatemanager.inputs.GetDnsAuthorizationArgs;
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
/// final var default = CertificatemanagerFunctions.getDnsAuthorization(GetDnsAuthorizationArgs.builder()
/// .name("my-dns-auth")
/// .location("global")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// default:
/// fn::invoke:
/// function: gcp:certificatemanager:getDnsAuthorization
/// arguments:
/// name: my-dns-auth
/// location: global
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDnsAuthorizationResult> getDnsAuthorization(
  GetDnsAuthorizationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:certificatemanager/getDnsAuthorization:getDnsAuthorization',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDnsAuthorizationResult.fromMap(result);
}
