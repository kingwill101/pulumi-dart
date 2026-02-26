import 'package:pulumi/pulumi.dart';
import 'sms_channel_args.dart';

/// Use the <span pulumi-lang-nodejs="`aws.pinpoint.SmsChannel`" pulumi-lang-dotnet="`aws.pinpoint.SmsChannel`" pulumi-lang-go="`pinpoint.SmsChannel`" pulumi-lang-python="`pinpoint.SmsChannel`" pulumi-lang-yaml="`aws.pinpoint.SmsChannel`" pulumi-lang-java="`aws.pinpoint.SmsChannel`">`aws.pinpoint.SmsChannel`</span> resource to manage Pinpoint SMS Channels.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const app = new aws.pinpoint.App("app", {});
/// const sms = new aws.pinpoint.SmsChannel("sms", {applicationId: app.applicationId});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// app = aws.pinpoint.App("app")
/// sms = aws.pinpoint.SmsChannel("sms", application_id=app.application_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var app = new Aws.Pinpoint.App("app");
///
/// var sms = new Aws.Pinpoint.SmsChannel("sms", new()
/// {
/// ApplicationId = app.ApplicationId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pinpoint"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// app, err := pinpoint.NewApp(ctx, "app", nil)
/// if err != nil {
/// return err
/// }
/// _, err = pinpoint.NewSmsChannel(ctx, "sms", &pinpoint.SmsChannelArgs{
/// ApplicationId: app.ApplicationId,
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
/// import com.pulumi.aws.pinpoint.App;
/// import com.pulumi.aws.pinpoint.SmsChannel;
/// import com.pulumi.aws.pinpoint.SmsChannelArgs;
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
/// var app = new App("app");
///
/// var sms = new SmsChannel("sms", SmsChannelArgs.builder()
/// .applicationId(app.applicationId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// sms:
/// type: aws:pinpoint:SmsChannel
/// properties:
/// applicationId: ${app.applicationId}
/// app:
/// type: aws:pinpoint:App
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import the Pinpoint SMS Channel using the <span pulumi-lang-nodejs="`applicationId`" pulumi-lang-dotnet="`ApplicationId`" pulumi-lang-go="`applicationId`" pulumi-lang-python="`application_id`" pulumi-lang-yaml="`applicationId`" pulumi-lang-java="`applicationId`">`application_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/smsChannel:SmsChannel sms application-id
/// ```
class SmsChannel extends CustomResource {
  /// ID of the application.
  late final Output<String> applicationId;

  /// Whether the channel is enabled or disabled. By default, it is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> enabled;

  /// Maximum number of promotional messages that can be sent per second.
  late final Output<int> promotionalMessagesPerSecond;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Identifier of the sender for your messages.
  late final Output<String?> senderId;

  /// Short Code registered with the phone provider.
  late final Output<String?> shortCode;

  /// Maximum number of transactional messages per second that can be sent.
  late final Output<int> transactionalMessagesPerSecond;

  SmsChannel(
    String name, {
    SmsChannelArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/smsChannel:SmsChannel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.enabled = registerOutput<bool?>('enabled');
    this.promotionalMessagesPerSecond =
        registerOutput<int>('promotionalMessagesPerSecond');
    this.region = registerOutput<String>('region');
    this.senderId = registerOutput<String?>('senderId');
    this.shortCode = registerOutput<String?>('shortCode');
    this.transactionalMessagesPerSecond =
        registerOutput<int>('transactionalMessagesPerSecond');
  }
}
