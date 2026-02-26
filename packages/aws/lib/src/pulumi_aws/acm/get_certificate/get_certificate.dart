import 'package:pulumi/pulumi.dart';
import 'get_certificate_args.dart';
import 'get_certificate_result.dart';

/// Use this data source to get the ARN of a certificate in AWS Certificate Manager (ACM).
/// You can reference the certificate by domain or tags without having to hard code the ARNs as input.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Find a certificate that is issued
/// const issued = aws.acm.getCertificate({
/// domain: "tf.example.com",
/// statuses: ["ISSUED"],
/// });
/// // Find a certificate issued by (not imported into) ACM
/// const amazonIssued = aws.acm.getCertificate({
/// domain: "tf.example.com",
/// types: ["AMAZON_ISSUED"],
/// mostRecent: true,
/// });
/// // Find a RSA 4096 bit certificate
/// const rsa4096 = aws.acm.getCertificate({
/// domain: "tf.example.com",
/// keyTypes: ["RSA_4096"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Find a certificate that is issued
/// issued = aws.acm.get_certificate(domain="tf.example.com",
/// statuses=["ISSUED"])
/// # Find a certificate issued by (not imported into) ACM
/// amazon_issued = aws.acm.get_certificate(domain="tf.example.com",
/// types=["AMAZON_ISSUED"],
/// most_recent=True)
/// # Find a RSA 4096 bit certificate
/// rsa4096 = aws.acm.get_certificate(domain="tf.example.com",
/// key_types=["RSA_4096"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // Find a certificate that is issued
/// var issued = Aws.Acm.GetCertificate.Invoke(new()
/// {
/// Domain = "tf.example.com",
/// Statuses = new[]
/// {
/// "ISSUED",
/// },
/// });
///
/// // Find a certificate issued by (not imported into) ACM
/// var amazonIssued = Aws.Acm.GetCertificate.Invoke(new()
/// {
/// Domain = "tf.example.com",
/// Types = new[]
/// {
/// "AMAZON_ISSUED",
/// },
/// MostRecent = true,
/// });
///
/// // Find a RSA 4096 bit certificate
/// var rsa4096 = Aws.Acm.GetCertificate.Invoke(new()
/// {
/// Domain = "tf.example.com",
/// KeyTypes = new[]
/// {
/// "RSA_4096",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/acm"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // Find a certificate that is issued
/// _, err := acm.LookupCertificate(ctx, &acm.LookupCertificateArgs{
/// Domain: pulumi.StringRef("tf.example.com"),
/// Statuses: []string{
/// "ISSUED",
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// // Find a certificate issued by (not imported into) ACM
/// _, err = acm.LookupCertificate(ctx, &acm.LookupCertificateArgs{
/// Domain: pulumi.StringRef("tf.example.com"),
/// Types: []string{
/// "AMAZON_ISSUED",
/// },
/// MostRecent: pulumi.BoolRef(true),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// // Find a RSA 4096 bit certificate
/// _, err = acm.LookupCertificate(ctx, &acm.LookupCertificateArgs{
/// Domain: pulumi.StringRef("tf.example.com"),
/// KeyTypes: []string{
/// "RSA_4096",
/// },
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
/// import com.pulumi.aws.acm.AcmFunctions;
/// import com.pulumi.aws.acm.inputs.GetCertificateArgs;
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
/// // Find a certificate that is issued
/// final var issued = AcmFunctions.getCertificate(GetCertificateArgs.builder()
/// .domain("tf.example.com")
/// .statuses("ISSUED")
/// .build());
///
/// // Find a certificate issued by (not imported into) ACM
/// final var amazonIssued = AcmFunctions.getCertificate(GetCertificateArgs.builder()
/// .domain("tf.example.com")
/// .types("AMAZON_ISSUED")
/// .mostRecent(true)
/// .build());
///
/// // Find a RSA 4096 bit certificate
/// final var rsa4096 = AcmFunctions.getCertificate(GetCertificateArgs.builder()
/// .domain("tf.example.com")
/// .keyTypes("RSA_4096")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// # Find a certificate that is issued
/// issued:
/// fn::invoke:
/// function: aws:acm:getCertificate
/// arguments:
/// domain: tf.example.com
/// statuses:
/// - ISSUED
/// # Find a certificate issued by (not imported into) ACM
/// amazonIssued:
/// fn::invoke:
/// function: aws:acm:getCertificate
/// arguments:
/// domain: tf.example.com
/// types:
/// - AMAZON_ISSUED
/// mostRecent: true
/// # Find a RSA 4096 bit certificate
/// rsa4096:
/// fn::invoke:
/// function: aws:acm:getCertificate
/// arguments:
/// domain: tf.example.com
/// keyTypes:
/// - RSA_4096
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetCertificateResult> getCertificate(
  GetCertificateArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:acm/getCertificate:getCertificate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult.fromMap(result);
}
