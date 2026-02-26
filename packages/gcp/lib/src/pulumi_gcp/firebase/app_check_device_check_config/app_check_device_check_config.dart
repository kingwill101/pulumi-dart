import 'package:pulumi/pulumi.dart';
import 'app_check_device_check_config_args.dart';

/// An app's DeviceCheck configuration object. Note that the Team ID registered with your
/// app is used as part of the validation process. Make sure your <span pulumi-lang-nodejs="`gcp.firebase.AppleApp`" pulumi-lang-dotnet="`gcp.firebase.AppleApp`" pulumi-lang-go="`firebase.AppleApp`" pulumi-lang-python="`firebase.AppleApp`" pulumi-lang-yaml="`gcp.firebase.AppleApp`" pulumi-lang-java="`gcp.firebase.AppleApp`">`gcp.firebase.AppleApp`</span> has a<span pulumi-lang-nodejs=" teamId " pulumi-lang-dotnet=" TeamId " pulumi-lang-go=" teamId " pulumi-lang-python=" team_id " pulumi-lang-yaml=" teamId " pulumi-lang-java=" teamId "> team_id </span>present.
///
///
/// To get more information about DeviceCheckConfig, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/appcheck/rest/v1/projects.apps.deviceCheckConfig)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/app-check)
///
///
///
/// ## Example Usage
///
/// ### Firebase App Check Device Check Config Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
/// import * as time from "@pulumiverse/time";
///
/// const _default = new gcp.firebase.AppleApp("default", {
/// project: "my-project-name",
/// displayName: "Apple app",
/// bundleId: "bundle.id.devicecheck",
/// teamId: "9987654321",
/// });
/// // It takes a while for App Check to recognize the new app
/// // If your app already exists, you don't have to wait 30 seconds.
/// const wait30s = new time.Sleep("wait_30s", {createDuration: "30s"}, {
/// dependsOn: [_default],
/// });
/// const defaultAppCheckDeviceCheckConfig = new gcp.firebase.AppCheckDeviceCheckConfig("default", {
/// project: "my-project-name",
/// appId: _default.appId,
/// tokenTtl: "7200s",
/// keyId: "Key ID",
/// privateKey: std.file({
/// input: "path/to/private-key.p8",
/// }).then(invoke => invoke.result),
/// }, {
/// dependsOn: [wait30s],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
/// import pulumiverse_time as time
///
/// default = gcp.firebase.AppleApp("default",
/// project="my-project-name",
/// display_name="Apple app",
/// bundle_id="bundle.id.devicecheck",
/// team_id="9987654321")
/// # It takes a while for App Check to recognize the new app
/// # If your app already exists, you don't have to wait 30 seconds.
/// wait30s = time.Sleep("wait_30s", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[default]))
/// default_app_check_device_check_config = gcp.firebase.AppCheckDeviceCheckConfig("default",
/// project="my-project-name",
/// app_id=default.app_id,
/// token_ttl="7200s",
/// key_id="Key ID",
/// private_key=std.file(input="path/to/private-key.p8").result,
/// opts = pulumi.ResourceOptions(depends_on=[wait30s]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.Firebase.AppleApp("default", new()
/// {
/// Project = "my-project-name",
/// DisplayName = "Apple app",
/// BundleId = "bundle.id.devicecheck",
/// TeamId = "9987654321",
/// });
///
/// // It takes a while for App Check to recognize the new app
/// // If your app already exists, you don't have to wait 30 seconds.
/// var wait30s = new Time.Sleep("wait_30s", new()
/// {
/// CreateDuration = "30s",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// @default,
/// },
/// });
///
/// var defaultAppCheckDeviceCheckConfig = new Gcp.Firebase.AppCheckDeviceCheckConfig("default", new()
/// {
/// Project = "my-project-name",
/// AppId = @default.AppId,
/// TokenTtl = "7200s",
/// KeyId = "Key ID",
/// PrivateKey = Std.File.Invoke(new()
/// {
/// Input = "path/to/private-key.p8",
/// }).Apply(invoke => invoke.Result),
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// wait30s,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// "github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := firebase.NewAppleApp(ctx, "default", &firebase.AppleAppArgs{
/// Project:     pulumi.String("my-project-name"),
/// DisplayName: pulumi.String("Apple app"),
/// BundleId:    pulumi.String("bundle.id.devicecheck"),
/// TeamId:      pulumi.String("9987654321"),
/// })
/// if err != nil {
/// return err
/// }
/// // It takes a while for App Check to recognize the new app
/// // If your app already exists, you don't have to wait 30 seconds.
/// wait30s, err := time.NewSleep(ctx, "wait_30s", &time.SleepArgs{
/// CreateDuration: pulumi.String("30s"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// _default,
/// }))
/// if err != nil {
/// return err
/// }
/// invokeFile, err := std.File(ctx, &std.FileArgs{
/// Input: "path/to/private-key.p8",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = firebase.NewAppCheckDeviceCheckConfig(ctx, "default", &firebase.AppCheckDeviceCheckConfigArgs{
/// Project:    pulumi.String("my-project-name"),
/// AppId:      _default.AppId,
/// TokenTtl:   pulumi.String("7200s"),
/// KeyId:      pulumi.String("Key ID"),
/// PrivateKey: pulumi.String(invokeFile.Result),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// wait30s,
/// }))
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
/// import com.pulumi.gcp.firebase.AppleApp;
/// import com.pulumi.gcp.firebase.AppleAppArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.firebase.AppCheckDeviceCheckConfig;
/// import com.pulumi.gcp.firebase.AppCheckDeviceCheckConfigArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var default_ = new AppleApp("default", AppleAppArgs.builder()
/// .project("my-project-name")
/// .displayName("Apple app")
/// .bundleId("bundle.id.devicecheck")
/// .teamId("9987654321")
/// .build());
///
/// // It takes a while for App Check to recognize the new app
/// // If your app already exists, you don't have to wait 30 seconds.
/// var wait30s = new Sleep("wait30s", SleepArgs.builder()
/// .createDuration("30s")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(default_)
/// .build());
///
/// var defaultAppCheckDeviceCheckConfig = new AppCheckDeviceCheckConfig("defaultAppCheckDeviceCheckConfig", AppCheckDeviceCheckConfigArgs.builder()
/// .project("my-project-name")
/// .appId(default_.appId())
/// .tokenTtl("7200s")
/// .keyId("Key ID")
/// .privateKey(StdFunctions.file(FileArgs.builder()
/// .input("path/to/private-key.p8")
/// .build()).result())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(wait30s)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:firebase:AppleApp
/// properties:
/// project: my-project-name
/// displayName: Apple app
/// bundleId: bundle.id.devicecheck
/// teamId: '9987654321'
/// # It takes a while for App Check to recognize the new app
/// # If your app already exists, you don't have to wait 30 seconds.
/// wait30s:
/// type: time:Sleep
/// name: wait_30s
/// properties:
/// createDuration: 30s
/// options:
/// dependsOn:
/// - ${default}
/// defaultAppCheckDeviceCheckConfig:
/// type: gcp:firebase:AppCheckDeviceCheckConfig
/// name: default
/// properties:
/// project: my-project-name
/// appId: ${default.appId}
/// tokenTtl: 7200s
/// keyId: Key ID
/// privateKey:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: path/to/private-key.p8
/// return: result
/// options:
/// dependsOn:
/// - ${wait30s}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// DeviceCheckConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/apps/{{app_id}}/deviceCheckConfig`
///
/// * `{{project}}/{{app_id}}`
///
/// * `{{app_id}}`
///
/// When using the `pulumi import` command, DeviceCheckConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckDeviceCheckConfig:AppCheckDeviceCheckConfig default projects/{{project}}/apps/{{app_id}}/deviceCheckConfig
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckDeviceCheckConfig:AppCheckDeviceCheckConfig default {{project}}/{{app_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckDeviceCheckConfig:AppCheckDeviceCheckConfig default {{app_id}}
/// ```
class AppCheckDeviceCheckConfig extends CustomResource {
  /// The ID of an
  /// [Apple App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps#IosApp.FIELDS.app_id).
  late final Output<String> appId;

  /// The key identifier of a private key enabled with DeviceCheck, created in your Apple Developer account.
  late final Output<String> keyId;

  /// The relative resource name of the DeviceCheck configuration object
  late final Output<String> name;

  /// The contents of the private key (.p8) file associated with the key specified by keyId.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final Output<String> privateKey;

  /// Whether the privateKey field was previously set. Since App Check will never return the
  /// privateKey field, this field is the only way to find out whether it was previously set.
  late final Output<bool> privateKeySet;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Specifies the duration for which App Check tokens exchanged from DeviceCheck artifacts will be valid.
  /// If unset, a default value of 1 hour is assumed. Must be between 30 minutes and 7 days, inclusive.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  late final Output<String> tokenTtl;

  AppCheckDeviceCheckConfig(
    String name, {
    AppCheckDeviceCheckConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appCheckDeviceCheckConfig:AppCheckDeviceCheckConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appId = Output.createUnknown<String>();
    this.keyId = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.privateKey = Output.createUnknown<String>();
    this.privateKeySet = Output.createUnknown<bool>();
    this.project = Output.createUnknown<String>();
    this.tokenTtl = Output.createUnknown<String>();
  }
}
