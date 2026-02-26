import 'package:pulumi/pulumi.dart';
import 'baidu_channel_args.dart';

/// Provides a Pinpoint Baidu Channel resource.
///
/// > **Note:** All arguments including the Api Key and Secret Key will be stored in the raw state as plain-text.
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const app = new aws.pinpoint.App("app", {});
/// const channel = new aws.pinpoint.BaiduChannel("channel", {
/// applicationId: app.applicationId,
/// apiKey: "",
/// secretKey: "",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// app = aws.pinpoint.App("app")
/// channel = aws.pinpoint.BaiduChannel("channel",
/// application_id=app.application_id,
/// api_key="",
/// secret_key="")
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
/// var channel = new Aws.Pinpoint.BaiduChannel("channel", new()
/// {
/// ApplicationId = app.ApplicationId,
/// ApiKey = "",
/// SecretKey = "",
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
/// _, err = pinpoint.NewBaiduChannel(ctx, "channel", &pinpoint.BaiduChannelArgs{
/// ApplicationId: app.ApplicationId,
/// ApiKey:        pulumi.String(""),
/// SecretKey:     pulumi.String(""),
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
/// import com.pulumi.aws.pinpoint.BaiduChannel;
/// import com.pulumi.aws.pinpoint.BaiduChannelArgs;
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
/// var channel = new BaiduChannel("channel", BaiduChannelArgs.builder()
/// .applicationId(app.applicationId())
/// .apiKey("")
/// .secretKey("")
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
/// type: aws:pinpoint:BaiduChannel
/// properties:
/// applicationId: ${app.applicationId}
/// apiKey: ""
/// secretKey: ""
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Pinpoint Baidu Channel using the `application-id`. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/baiduChannel:BaiduChannel channel application-id
/// ```
class BaiduChannel extends CustomResource {
  /// Platform credential API key from Baidu.
  late final Output<String> apiKey;

  /// The application ID.
  late final Output<String> applicationId;

  /// Specifies whether to enable the channel. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> enabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Platform credential Secret key from Baidu.
  late final Output<String> secretKey;

  BaiduChannel(
    String name, {
    BaiduChannelArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/baiduChannel:BaiduChannel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiKey = Output.createUnknown<String>();
    this.applicationId = Output.createUnknown<String>();
    this.enabled = Output.createUnknown<bool?>();
    this.region = Output.createUnknown<String>();
    this.secretKey = Output.createUnknown<String>();
  }
}
