import 'package:pulumi/pulumi.dart' as pulumi;
import 'sms_channel_args.dart';
import 'sms_channel_state.dart';

/// Use the `aws.pinpoint.SmsChannel` resource to manage Pinpoint SMS Channels.
///
/// ## Example Usage
///
///
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
///     var app = new Aws.Pinpoint.App("app");
///
///     var sms = new Aws.Pinpoint.SmsChannel("sms", new()
///     {
///         ApplicationId = app.ApplicationId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pinpoint"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		app, err := pinpoint.NewApp(ctx, "app", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pinpoint.NewSmsChannel(ctx, "sms", &pinpoint.SmsChannelArgs{
/// 			ApplicationId: app.ApplicationId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var app = new App("app");
///
///         var sms = new SmsChannel("sms", SmsChannelArgs.builder()
///             .applicationId(app.applicationId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sms:
///     type: aws:pinpoint:SmsChannel
///     properties:
///       applicationId: ${app.applicationId}
///   app:
///     type: aws:pinpoint:App
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import the Pinpoint SMS Channel using the `application_id`. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/smsChannel:SmsChannel sms application-id
/// ```
class SmsChannel extends pulumi.CustomResource {
  /// ID of the application.
  late final pulumi.Output<String> applicationId;
  /// Whether the channel is enabled or disabled. By default, it is set to `true`.
  late final pulumi.Output<bool?> enabled;
  /// Maximum number of promotional messages that can be sent per second.
  late final pulumi.Output<int> promotionalMessagesPerSecond;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Identifier of the sender for your messages.
  late final pulumi.Output<String?> senderId;
  /// Short Code registered with the phone provider.
  late final pulumi.Output<String?> shortCode;
  /// Maximum number of transactional messages per second that can be sent.
  late final pulumi.Output<int> transactionalMessagesPerSecond;

  /// Creates a new [SmsChannel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SmsChannel]. {@macro pulumi_pinpoint_sms_channel_sms_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SmsChannel(
    String name, {
    SmsChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/smsChannel:SmsChannel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.enabled = registerOutput<bool?>('enabled');
    this.promotionalMessagesPerSecond = registerOutput<int>('promotionalMessagesPerSecond');
    this.region = registerOutput<String>('region');
    this.senderId = registerOutput<String?>('senderId');
    this.shortCode = registerOutput<String?>('shortCode');
    this.transactionalMessagesPerSecond = registerOutput<int>('transactionalMessagesPerSecond');
  }

  /// Gets an existing [SmsChannel] resource's state with the given [name] and [id].
  static SmsChannel get(
    String name,
    pulumi.Input<String> id, {
    SmsChannelState? state,
  }) {
    return SmsChannel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SmsChannel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/smsChannel:SmsChannel',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.enabled = registerOutput<bool?>('enabled');
    this.promotionalMessagesPerSecond = registerOutput<int>('promotionalMessagesPerSecond');
    this.region = registerOutput<String>('region');
    this.senderId = registerOutput<String?>('senderId');
    this.shortCode = registerOutput<String?>('shortCode');
    this.transactionalMessagesPerSecond = registerOutput<int>('transactionalMessagesPerSecond');
  }
}
