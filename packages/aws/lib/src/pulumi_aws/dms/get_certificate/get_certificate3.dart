import 'package:pulumi/pulumi.dart';
import 'get_certificate_args3.dart';
import 'get_certificate_result3.dart';

/// Data source for managing an AWS DMS (Database Migration) Certificate.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.dms.getCertificate({
/// certificateId: test.certificateId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dms.get_certificate(certificate_id=test["certificateId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Dms.GetCertificate.Invoke(new()
/// {
/// CertificateId = test.CertificateId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dms.LookupCertificate(ctx, &dms.LookupCertificateArgs{
/// CertificateId: test.CertificateId,
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
/// import com.pulumi.aws.dms.DmsFunctions;
/// import com.pulumi.aws.dms.inputs.GetCertificateArgs;
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
/// final var example = DmsFunctions.getCertificate(GetCertificateArgs.builder()
/// .certificateId(test.certificateId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:dms:getCertificate
/// arguments:
/// certificateId: ${test.certificateId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetCertificateResult3> getCertificate3(
  GetCertificateArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:dms/getCertificate:getCertificate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult3.fromMap(result);
}
