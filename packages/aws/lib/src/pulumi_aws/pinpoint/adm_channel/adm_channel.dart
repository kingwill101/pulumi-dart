import 'package:pulumi/pulumi.dart';
import 'adm_channel_args.dart';

/// Provides a Pinpoint ADM (Amazon Device Messaging) Channel resource.
///
/// > **Note:** All arguments including the Client ID and Client Secret will be stored in the raw state as plain-text.
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const app = new aws.pinpoint.App("app", {});
/// const channel = new aws.pinpoint.AdmChannel("channel", {
/// applicationId: app.applicationId,
/// clientId: "",
/// clientSecret: "",
/// enabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// app = aws.pinpoint.App("app")
/// channel = aws.pinpoint.AdmChannel("channel",
/// application_id=app.application_id,
/// client_id="",
/// client_secret="",
/// enabled=True)
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
/// var channel = new Aws.Pinpoint.AdmChannel("channel", new()
/// {
/// ApplicationId = app.ApplicationId,
/// ClientId = "",
/// ClientSecret = "",
/// Enabled = true,
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
/// _, err = pinpoint.NewAdmChannel(ctx, "channel", &pinpoint.AdmChannelArgs{
/// ApplicationId: app.ApplicationId,
/// ClientId:      pulumi.String(""),
/// ClientSecret:  pulumi.String(""),
/// Enabled:       pulumi.Bool(true),
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
/// import com.pulumi.aws.pinpoint.AdmChannel;
/// import com.pulumi.aws.pinpoint.AdmChannelArgs;
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
/// var channel = new AdmChannel("channel", AdmChannelArgs.builder()
/// .applicationId(app.applicationId())
/// .clientId("")
/// .clientSecret("")
/// .enabled(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// app:
/// type: aws:pinpoint:App
/// channel:
/// type: aws:pinpoint:AdmChannel
/// properties:
/// applicationId: ${app.applicationId}
/// clientId: ""
/// clientSecret: ""
/// enabled: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Pinpoint ADM Channel using the `application-id`. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/admChannel:AdmChannel channel application-id
/// ```
class AdmChannel extends CustomResource {
  /// The application ID.
  late final Output<String> applicationId;

  /// Client ID (part of OAuth Credentials) obtained via Amazon Developer Account.
  late final Output<String> clientId;

  /// Client Secret (part of OAuth Credentials) obtained via Amazon Developer Account.
  late final Output<String> clientSecret;

  /// Specifies whether to enable the channel. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> enabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  AdmChannel(
    String name, {
    AdmChannelArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/admChannel:AdmChannel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.clientId = registerOutput<String>('clientId');
    this.clientSecret = registerOutput<String>('clientSecret');
    this.enabled = registerOutput<bool?>('enabled');
    this.region = registerOutput<String>('region');
  }
}
