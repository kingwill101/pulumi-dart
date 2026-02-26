import 'package:pulumi/pulumi.dart';
import 'voice_connector_logging_args.dart';

/// Adds a logging configuration for the specified Amazon Chime Voice Connector. The logging configuration specifies whether SIP message logs are enabled for sending to Amazon CloudWatch Logs.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.chime.VoiceConnector("default", {
/// name: "vc-name-test",
/// requireEncryption: true,
/// });
/// const defaultVoiceConnectorLogging = new aws.chime.VoiceConnectorLogging("default", {
/// enableSipLogs: true,
/// enableMediaMetricLogs: true,
/// voiceConnectorId: _default.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.chime.VoiceConnector("default",
/// name="vc-name-test",
/// require_encryption=True)
/// default_voice_connector_logging = aws.chime.VoiceConnectorLogging("default",
/// enable_sip_logs=True,
/// enable_media_metric_logs=True,
/// voice_connector_id=default.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Aws.Chime.VoiceConnector("default", new()
/// {
/// Name = "vc-name-test",
/// RequireEncryption = true,
/// });
///
/// var defaultVoiceConnectorLogging = new Aws.Chime.VoiceConnectorLogging("default", new()
/// {
/// EnableSipLogs = true,
/// EnableMediaMetricLogs = true,
/// VoiceConnectorId = @default.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/chime"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := chime.NewVoiceConnector(ctx, "default", &chime.VoiceConnectorArgs{
/// Name:              pulumi.String("vc-name-test"),
/// RequireEncryption: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = chime.NewVoiceConnectorLogging(ctx, "default", &chime.VoiceConnectorLoggingArgs{
/// EnableSipLogs:         pulumi.Bool(true),
/// EnableMediaMetricLogs: pulumi.Bool(true),
/// VoiceConnectorId:      _default.ID(),
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
/// import com.pulumi.aws.chime.VoiceConnector;
/// import com.pulumi.aws.chime.VoiceConnectorArgs;
/// import com.pulumi.aws.chime.VoiceConnectorLogging;
/// import com.pulumi.aws.chime.VoiceConnectorLoggingArgs;
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
/// var default_ = new VoiceConnector("default", VoiceConnectorArgs.builder()
/// .name("vc-name-test")
/// .requireEncryption(true)
/// .build());
///
/// var defaultVoiceConnectorLogging = new VoiceConnectorLogging("defaultVoiceConnectorLogging", VoiceConnectorLoggingArgs.builder()
/// .enableSipLogs(true)
/// .enableMediaMetricLogs(true)
/// .voiceConnectorId(default_.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: aws:chime:VoiceConnector
/// properties:
/// name: vc-name-test
/// requireEncryption: true
/// defaultVoiceConnectorLogging:
/// type: aws:chime:VoiceConnectorLogging
/// name: default
/// properties:
/// enableSipLogs: true
/// enableMediaMetricLogs: true
/// voiceConnectorId: ${default.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Chime Voice Connector Logging using the <span pulumi-lang-nodejs="`voiceConnectorId`" pulumi-lang-dotnet="`VoiceConnectorId`" pulumi-lang-go="`voiceConnectorId`" pulumi-lang-python="`voice_connector_id`" pulumi-lang-yaml="`voiceConnectorId`" pulumi-lang-java="`voiceConnectorId`">`voice_connector_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:chime/voiceConnectorLogging:VoiceConnectorLogging default abcdef1ghij2klmno3pqr4
/// ```
class VoiceConnectorLogging extends CustomResource {
  /// When true, enables logging of detailed media metrics for Voice Connectors to Amazon CloudWatch logs.
  late final Output<bool?> enableMediaMetricLogs;

  /// When true, enables SIP message logs for sending to Amazon CloudWatch Logs.
  late final Output<bool?> enableSipLogs;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Chime Voice Connector ID.
  late final Output<String> voiceConnectorId;

  VoiceConnectorLogging(
    String name, {
    VoiceConnectorLoggingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:chime/voiceConnectorLogging:VoiceConnectorLogging',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.enableMediaMetricLogs = registerOutput<bool?>('enableMediaMetricLogs');
    this.enableSipLogs = registerOutput<bool?>('enableSipLogs');
    this.region = registerOutput<String>('region');
    this.voiceConnectorId = registerOutput<String>('voiceConnectorId');
  }
}
