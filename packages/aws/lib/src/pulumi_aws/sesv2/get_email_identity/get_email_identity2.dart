import 'package:pulumi/pulumi.dart';
import 'get_email_identity_args2.dart';
import 'get_email_identity_result2.dart';

/// Data source for managing an AWS SESv2 (Simple Email V2) Email Identity.
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
/// const example = aws.sesv2.getEmailIdentity({
/// emailIdentity: "example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.get_email_identity(email_identity="example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.SesV2.GetEmailIdentity.Invoke(new()
/// {
/// EmailIdentity = "example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sesv2.LookupEmailIdentity(ctx, &sesv2.LookupEmailIdentityArgs{
/// EmailIdentity: "example.com",
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
/// import com.pulumi.aws.sesv2.Sesv2Functions;
/// import com.pulumi.aws.sesv2.inputs.GetEmailIdentityArgs;
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
/// final var example = Sesv2Functions.getEmailIdentity(GetEmailIdentityArgs.builder()
/// .emailIdentity("example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:sesv2:getEmailIdentity
/// arguments:
/// emailIdentity: example.com
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetEmailIdentityResult2> getEmailIdentity2(
  GetEmailIdentityArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sesv2/getEmailIdentity:getEmailIdentity',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEmailIdentityResult2.fromMap(result);
}
