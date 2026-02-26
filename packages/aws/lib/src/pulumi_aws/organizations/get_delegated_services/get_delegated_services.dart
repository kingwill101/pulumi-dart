import 'package:pulumi/pulumi.dart';
import 'get_delegated_services_args.dart';
import 'get_delegated_services_result.dart';

/// Get a list the AWS services for which the specified account is a delegated administrator
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.organizations.getDelegatedServices({
/// accountId: "AWS ACCOUNT ID",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.organizations.get_delegated_services(account_id="AWS ACCOUNT ID")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Organizations.GetDelegatedServices.Invoke(new()
/// {
/// AccountId = "AWS ACCOUNT ID",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := organizations.GetDelegatedServices(ctx, &organizations.GetDelegatedServicesArgs{
/// AccountId: "AWS ACCOUNT ID",
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
/// import com.pulumi.aws.organizations.OrganizationsFunctions;
/// import com.pulumi.aws.organizations.inputs.GetDelegatedServicesArgs;
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
/// final var example = OrganizationsFunctions.getDelegatedServices(GetDelegatedServicesArgs.builder()
/// .accountId("AWS ACCOUNT ID")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:organizations:getDelegatedServices
/// arguments:
/// accountId: AWS ACCOUNT ID
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDelegatedServicesResult> getDelegatedServices(
  GetDelegatedServicesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:organizations/getDelegatedServices:getDelegatedServices',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDelegatedServicesResult.fromMap(result);
}
