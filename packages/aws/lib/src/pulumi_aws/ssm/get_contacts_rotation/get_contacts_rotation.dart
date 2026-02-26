import 'package:pulumi/pulumi.dart';
import 'get_contacts_rotation_args.dart';
import 'get_contacts_rotation_result.dart';

/// Provides a Terraform data source for managing a Contacts Rotation in AWS Systems Manager Incident Manager
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
/// const example = aws.ssm.getContactsRotation({
/// arn: "arn:aws:ssm-contacts:us-east-1:012345678910:rotation/example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssm.get_contacts_rotation(arn="arn:aws:ssm-contacts:us-east-1:012345678910:rotation/example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ssm.GetContactsRotation.Invoke(new()
/// {
/// Arn = "arn:aws:ssm-contacts:us-east-1:012345678910:rotation/example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ssm.LookupContactsRotation(ctx, &ssm.LookupContactsRotationArgs{
/// Arn: "arn:aws:ssm-contacts:us-east-1:012345678910:rotation/example",
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
/// import com.pulumi.aws.ssm.SsmFunctions;
/// import com.pulumi.aws.ssm.inputs.GetContactsRotationArgs;
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
/// final var example = SsmFunctions.getContactsRotation(GetContactsRotationArgs.builder()
/// .arn("arn:aws:ssm-contacts:us-east-1:012345678910:rotation/example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ssm:getContactsRotation
/// arguments:
/// arn: arn:aws:ssm-contacts:us-east-1:012345678910:rotation/example
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetContactsRotationResult> getContactsRotation(
  GetContactsRotationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssm/getContactsRotation:getContactsRotation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetContactsRotationResult.fromMap(result);
}
