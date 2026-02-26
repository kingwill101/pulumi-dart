import 'package:pulumi/pulumi.dart';
import 'get_token_args.dart';
import 'get_token_result.dart';

/// A verification token is used to demonstrate ownership of a website or domain.
///
///
/// To get more information about Token, see:
///
/// * [API documentation](https://developers.google.com/site-verification/v1)
/// * How-to Guides
/// * [Getting Started](https://developers.google.com/site-verification/v1/getting_started)
///
///
/// ## Example Usage
///
/// ### Site Verification Via Site META Tag
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.siteverification.getToken({
/// type: "SITE",
/// identifier: "https://www.example.com",
/// verificationMethod: "META",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.siteverification.get_token(type="SITE",
/// identifier="https://www.example.com",
/// verification_method="META")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Gcp.SiteVerification.GetToken.Invoke(new()
/// {
/// Type = "SITE",
/// Identifier = "https://www.example.com",
/// VerificationMethod = "META",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/siteverification"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := siteverification.GetToken(ctx, &siteverification.GetTokenArgs{
/// Type:               "SITE",
/// Identifier:         "https://www.example.com",
/// VerificationMethod: "META",
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
/// import com.pulumi.gcp.siteverification.SiteverificationFunctions;
/// import com.pulumi.gcp.siteverification.inputs.GetTokenArgs;
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
/// final var example = SiteverificationFunctions.getToken(GetTokenArgs.builder()
/// .type("SITE")
/// .identifier("https://www.example.com")
/// .verificationMethod("META")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: gcp:siteverification:getToken
/// arguments:
/// type: SITE
/// identifier: https://www.example.com
/// verificationMethod: META
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Site Verification Via DNS TXT Record
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.siteverification.getToken({
/// type: "INET_DOMAIN",
/// identifier: "www.example.com",
/// verificationMethod: "DNS_TXT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.siteverification.get_token(type="INET_DOMAIN",
/// identifier="www.example.com",
/// verification_method="DNS_TXT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Gcp.SiteVerification.GetToken.Invoke(new()
/// {
/// Type = "INET_DOMAIN",
/// Identifier = "www.example.com",
/// VerificationMethod = "DNS_TXT",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/siteverification"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := siteverification.GetToken(ctx, &siteverification.GetTokenArgs{
/// Type:               "INET_DOMAIN",
/// Identifier:         "www.example.com",
/// VerificationMethod: "DNS_TXT",
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
/// import com.pulumi.gcp.siteverification.SiteverificationFunctions;
/// import com.pulumi.gcp.siteverification.inputs.GetTokenArgs;
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
/// final var example = SiteverificationFunctions.getToken(GetTokenArgs.builder()
/// .type("INET_DOMAIN")
/// .identifier("www.example.com")
/// .verificationMethod("DNS_TXT")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: gcp:siteverification:getToken
/// arguments:
/// type: INET_DOMAIN
/// identifier: www.example.com
/// verificationMethod: DNS_TXT
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTokenResult> getToken(
  GetTokenArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:siteverification/getToken:getToken',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTokenResult.fromMap(result);
}
