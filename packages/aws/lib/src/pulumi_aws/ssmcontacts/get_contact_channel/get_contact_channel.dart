import 'package:pulumi/pulumi.dart';
import 'get_contact_channel_args.dart';
import 'get_contact_channel_result.dart';

/// Data source for managing an AWS SSM Contacts Contact Channel.
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
/// const example = aws.ssmcontacts.getContactChannel({
/// arn: "arn:aws:ssm-contacts:us-west-2:123456789012:contact-channel/example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssmcontacts.get_contact_channel(arn="arn:aws:ssm-contacts:us-west-2:123456789012:contact-channel/example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.SsmContacts.GetContactChannel.Invoke(new()
/// {
/// Arn = "arn:aws:ssm-contacts:us-west-2:123456789012:contact-channel/example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssmcontacts"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ssmcontacts.LookupContactChannel(ctx, &ssmcontacts.LookupContactChannelArgs{
/// Arn: "arn:aws:ssm-contacts:us-west-2:123456789012:contact-channel/example",
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
/// import com.pulumi.aws.ssmcontacts.SsmcontactsFunctions;
/// import com.pulumi.aws.ssmcontacts.inputs.GetContactChannelArgs;
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
/// final var example = SsmcontactsFunctions.getContactChannel(GetContactChannelArgs.builder()
/// .arn("arn:aws:ssm-contacts:us-west-2:123456789012:contact-channel/example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ssmcontacts:getContactChannel
/// arguments:
/// arn: arn:aws:ssm-contacts:us-west-2:123456789012:contact-channel/example
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetContactChannelResult> getContactChannel(
  GetContactChannelArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssmcontacts/getContactChannel:getContactChannel',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetContactChannelResult.fromMap(result);
}
