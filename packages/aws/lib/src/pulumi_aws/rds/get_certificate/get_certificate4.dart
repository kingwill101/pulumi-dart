import 'package:pulumi/pulumi.dart';
import 'get_certificate_args4.dart';
import 'get_certificate_result4.dart';

/// Information about an RDS Certificate.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.rds.getCertificate({
/// latestValidTill: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.get_certificate(latest_valid_till=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Rds.GetCertificate.Invoke(new()
/// {
/// LatestValidTill = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := rds.LookupCertificate(ctx, &rds.LookupCertificateArgs{
/// LatestValidTill: pulumi.BoolRef(true),
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
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetCertificateArgs;
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
/// final var example = RdsFunctions.getCertificate(GetCertificateArgs.builder()
/// .latestValidTill(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:rds:getCertificate
/// arguments:
/// latestValidTill: true
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetCertificateResult4> getCertificate4(
  GetCertificateArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getCertificate:getCertificate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult4.fromMap(result);
}
