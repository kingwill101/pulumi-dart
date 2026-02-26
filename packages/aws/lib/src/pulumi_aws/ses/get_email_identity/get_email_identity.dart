import 'package:pulumi/pulumi.dart';
import 'get_email_identity_args.dart';
import 'get_email_identity_result.dart';

/// Retrieve the active SES email identity
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ses.getEmailIdentity({
/// email: "awesome@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ses.get_email_identity(email="awesome@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ses.GetEmailIdentity.Invoke(new()
/// {
/// Email = "awesome@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ses"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ses.LookupEmailIdentity(ctx, &ses.LookupEmailIdentityArgs{
/// Email: "awesome@example.com",
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
/// import com.pulumi.aws.ses.SesFunctions;
/// import com.pulumi.aws.ses.inputs.GetEmailIdentityArgs;
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
/// final var example = SesFunctions.getEmailIdentity(GetEmailIdentityArgs.builder()
/// .email("awesome@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ses:getEmailIdentity
/// arguments:
/// email: awesome@example.com
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetEmailIdentityResult> getEmailIdentity(
  GetEmailIdentityArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ses/getEmailIdentity:getEmailIdentity',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEmailIdentityResult.fromMap(result);
}
