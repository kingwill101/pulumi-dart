import 'package:pulumi/pulumi.dart';
import 'get_registration_code_args.dart';
import 'get_registration_code_result.dart';

/// Gets a registration code used to register a CA certificate with AWS IoT.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as tls from "@pulumi/tls";
///
/// const example = aws.iot.getRegistrationCode({});
/// const verification = new tls.PrivateKey("verification", {algorithm: "RSA"});
/// const verificationCertRequest = new tls.CertRequest("verification", {
/// keyAlgorithm: "RSA",
/// privateKeyPem: verification.privateKeyPem,
/// subject: [{
/// commonName: example.then(example => example.registrationCode),
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_tls as tls
///
/// example = aws.iot.get_registration_code()
/// verification = tls.PrivateKey("verification", algorithm="RSA")
/// verification_cert_request = tls.CertRequest("verification",
/// key_algorithm="RSA",
/// private_key_pem=verification.private_key_pem,
/// subject=[{
/// "commonName": example.registration_code,
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Tls = Pulumi.Tls;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Iot.GetRegistrationCode.Invoke();
///
/// var verification = new Tls.PrivateKey("verification", new()
/// {
/// Algorithm = "RSA",
/// });
///
/// var verificationCertRequest = new Tls.CertRequest("verification", new()
/// {
/// KeyAlgorithm = "RSA",
/// PrivateKeyPem = verification.PrivateKeyPem,
/// Subject = new[]
/// {
///
/// {
/// { "commonName", example.Apply(getRegistrationCodeResult => getRegistrationCodeResult.RegistrationCode) },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// "github.com/pulumi/pulumi-tls/sdk/v5/go/tls"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := iot.GetRegistrationCode(ctx, &iot.GetRegistrationCodeArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// verification, err := tls.NewPrivateKey(ctx, "verification", &tls.PrivateKeyArgs{
/// Algorithm: pulumi.String("RSA"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = tls.NewCertRequest(ctx, "verification", &tls.CertRequestArgs{
/// KeyAlgorithm:  "RSA",
/// PrivateKeyPem: verification.PrivateKeyPem,
/// Subject: tls.CertRequestSubjectArgs{
/// map[string]interface{}{
/// "commonName": example.RegistrationCode,
/// },
/// },
/// })
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
/// import com.pulumi.aws.iot.IotFunctions;
/// import com.pulumi.aws.iot.inputs.GetRegistrationCodeArgs;
/// import com.pulumi.tls.PrivateKey;
/// import com.pulumi.tls.PrivateKeyArgs;
/// import com.pulumi.tls.CertRequest;
/// import com.pulumi.tls.CertRequestArgs;
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
/// final var example = IotFunctions.getRegistrationCode(GetRegistrationCodeArgs.builder()
/// .build());
///
/// var verification = new PrivateKey("verification", PrivateKeyArgs.builder()
/// .algorithm("RSA")
/// .build());
///
/// var verificationCertRequest = new CertRequest("verificationCertRequest", CertRequestArgs.builder()
/// .keyAlgorithm("RSA")
/// .privateKeyPem(verification.privateKeyPem())
/// .subject(CertRequestSubjectArgs.builder()
/// .commonName(example.registrationCode())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// verification:
/// type: tls:PrivateKey
/// properties:
/// algorithm: RSA
/// verificationCertRequest:
/// type: tls:CertRequest
/// name: verification
/// properties:
/// keyAlgorithm: RSA
/// privateKeyPem: ${verification.privateKeyPem}
/// subject:
/// - commonName: ${example.registrationCode}
/// variables:
/// example:
/// fn::invoke:
/// function: aws:iot:getRegistrationCode
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRegistrationCodeResult> getRegistrationCode(
  GetRegistrationCodeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iot/getRegistrationCode:getRegistrationCode',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegistrationCodeResult.fromMap(result);
}
