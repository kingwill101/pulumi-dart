import 'package:pulumi/pulumi.dart';
import '../voice_connector_origination_route/voice_connector_origination_route.dart';
import 'voice_connector_origination_args.dart';

/// Enable origination settings to control inbound calling to your SIP infrastructure.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.chime.VoiceConnector("default", {
/// name: "test",
/// requireEncryption: true,
/// });
/// const defaultVoiceConnectorOrigination = new aws.chime.VoiceConnectorOrigination("default", {
/// disabled: false,
/// voiceConnectorId: _default.id,
/// routes: [
/// {
/// host: "127.0.0.1",
/// port: 8081,
/// protocol: "TCP",
/// priority: 1,
/// weight: 1,
/// },
/// {
/// host: "127.0.0.2",
/// port: 8082,
/// protocol: "TCP",
/// priority: 2,
/// weight: 10,
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.chime.VoiceConnector("default",
/// name="test",
/// require_encryption=True)
/// default_voice_connector_origination = aws.chime.VoiceConnectorOrigination("default",
/// disabled=False,
/// voice_connector_id=default.id,
/// routes=[
/// {
/// "host": "127.0.0.1",
/// "port": 8081,
/// "protocol": "TCP",
/// "priority": 1,
/// "weight": 1,
/// },
/// {
/// "host": "127.0.0.2",
/// "port": 8082,
/// "protocol": "TCP",
/// "priority": 2,
/// "weight": 10,
/// },
/// ])
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
/// Name = "test",
/// RequireEncryption = true,
/// });
///
/// var defaultVoiceConnectorOrigination = new Aws.Chime.VoiceConnectorOrigination("default", new()
/// {
/// Disabled = false,
/// VoiceConnectorId = @default.Id,
/// Routes = new[]
/// {
/// new Aws.Chime.Inputs.VoiceConnectorOriginationRouteArgs
/// {
/// Host = "127.0.0.1",
/// Port = 8081,
/// Protocol = "TCP",
/// Priority = 1,
/// Weight = 1,
/// },
/// new Aws.Chime.Inputs.VoiceConnectorOriginationRouteArgs
/// {
/// Host = "127.0.0.2",
/// Port = 8082,
/// Protocol = "TCP",
/// Priority = 2,
/// Weight = 10,
/// },
/// },
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
/// Name:              pulumi.String("test"),
/// RequireEncryption: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = chime.NewVoiceConnectorOrigination(ctx, "default", &chime.VoiceConnectorOriginationArgs{
/// Disabled:         pulumi.Bool(false),
/// VoiceConnectorId: _default.ID(),
/// Routes: chime.VoiceConnectorOriginationRouteArray{
/// &chime.VoiceConnectorOriginationRouteArgs{
/// Host:     pulumi.String("127.0.0.1"),
/// Port:     pulumi.Int(8081),
/// Protocol: pulumi.String("TCP"),
/// Priority: pulumi.Int(1),
/// Weight:   pulumi.Int(1),
/// },
/// &chime.VoiceConnectorOriginationRouteArgs{
/// Host:     pulumi.String("127.0.0.2"),
/// Port:     pulumi.Int(8082),
/// Protocol: pulumi.String("TCP"),
/// Priority: pulumi.Int(2),
/// Weight:   pulumi.Int(10),
/// },
/// },
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
/// import com.pulumi.aws.chime.VoiceConnectorOrigination;
/// import com.pulumi.aws.chime.VoiceConnectorOriginationArgs;
/// import com.pulumi.aws.chime.inputs.VoiceConnectorOriginationRouteArgs;
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
/// .name("test")
/// .requireEncryption(true)
/// .build());
///
/// var defaultVoiceConnectorOrigination = new VoiceConnectorOrigination("defaultVoiceConnectorOrigination", VoiceConnectorOriginationArgs.builder()
/// .disabled(false)
/// .voiceConnectorId(default_.id())
/// .routes(
/// VoiceConnectorOriginationRouteArgs.builder()
/// .host("127.0.0.1")
/// .port(8081)
/// .protocol("TCP")
/// .priority(1)
/// .weight(1)
/// .build(),
/// VoiceConnectorOriginationRouteArgs.builder()
/// .host("127.0.0.2")
/// .port(8082)
/// .protocol("TCP")
/// .priority(2)
/// .weight(10)
/// .build())
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
/// name: test
/// requireEncryption: true
/// defaultVoiceConnectorOrigination:
/// type: aws:chime:VoiceConnectorOrigination
/// name: default
/// properties:
/// disabled: false
/// voiceConnectorId: ${default.id}
/// routes:
/// - host: 127.0.0.1
/// port: 8081
/// protocol: TCP
/// priority: 1
/// weight: 1
/// - host: 127.0.0.2
/// port: 8082
/// protocol: TCP
/// priority: 2
/// weight: 10
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Chime Voice Connector Origination using the <span pulumi-lang-nodejs="`voiceConnectorId`" pulumi-lang-dotnet="`VoiceConnectorId`" pulumi-lang-go="`voiceConnectorId`" pulumi-lang-python="`voice_connector_id`" pulumi-lang-yaml="`voiceConnectorId`" pulumi-lang-java="`voiceConnectorId`">`voice_connector_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:chime/voiceConnectorOrigination:VoiceConnectorOrigination default abcdef1ghij2klmno3pqr4
/// ```
class VoiceConnectorOrigination extends CustomResource {
  /// When origination settings are disabled, inbound calls are not enabled for your Amazon Chime Voice Connector.
  late final Output<bool?> disabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Set of call distribution properties defined for your SIP hosts. See route below for more details. Minimum of 1. Maximum of 20.
  late final Output<List<VoiceConnectorOriginationRoute>> routes;

  /// The Amazon Chime Voice Connector ID.
  late final Output<String> voiceConnectorId;

  VoiceConnectorOrigination(
    String name, {
    VoiceConnectorOriginationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:chime/voiceConnectorOrigination:VoiceConnectorOrigination',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.disabled = registerOutput<bool?>('disabled');
    this.region = registerOutput<String>('region');
    this.routes =
        registerOutput<List<VoiceConnectorOriginationRoute>>('routes');
    this.voiceConnectorId = registerOutput<String>('voiceConnectorId');
  }
}
