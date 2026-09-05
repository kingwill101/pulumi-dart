import 'package:pulumi/pulumi.dart' as pulumi;
import 'apns_sandbox_channel_args.dart';
import 'apns_sandbox_channel_state.dart';

/// Provides an End User Messaging APNs Sandbox Channel resource.
///
/// &gt; **Note:** All arguments, including certificates and tokens, will be stored in the raw state as plain-text.
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const app = new aws.pinpoint.App("app", {});
/// const apnsSandbox = new aws.pinpoint.ApnsSandboxChannel("apns_sandbox", {
///     applicationId: app.applicationId,
///     certificate: std.file({
///         input: "./certificate.pem",
///     }).then(invoke => invoke.result),
///     privateKey: std.file({
///         input: "./private_key.key",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// app = aws.pinpoint.App("app")
/// apns_sandbox = aws.pinpoint.ApnsSandboxChannel("apns_sandbox",
///     application_id=app.application_id,
///     certificate=std.file(input="./certificate.pem").result,
///     private_key=std.file(input="./private_key.key").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var app = new Aws.Pinpoint.App("app");
///
///     var apnsSandbox = new Aws.Pinpoint.ApnsSandboxChannel("apns_sandbox", new()
///     {
///         ApplicationId = app.ApplicationId,
///         Certificate = Std.File.Invoke(new()
///         {
///             Input = "./certificate.pem",
///         }).Apply(invoke => invoke.Result),
///         PrivateKey = Std.File.Invoke(new()
///         {
///             Input = "./private_key.key",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pinpoint"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		app, err := pinpoint.NewApp(ctx, "app", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "./certificate.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "./private_key.key",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pinpoint.NewApnsSandboxChannel(ctx, "apns_sandbox", &pinpoint.ApnsSandboxChannelArgs{
/// 			ApplicationId: app.ApplicationId,
/// 			Certificate:   pulumi.String(invokeFile.Result),
/// 			PrivateKey:    pulumi.String(invokeFile1.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "aws_pinpoint_apnssandboxchannel" "apns_sandbox" {
///   application_id = aws_pinpoint_app.app.application_id
///   certificate    = file("./certificate.pem")
///   private_key    = file("./private_key.key")
/// }
/// resource "aws_pinpoint_app" "app" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.pinpoint.App;
/// import com.pulumi.aws.pinpoint.ApnsSandboxChannel;
/// import com.pulumi.aws.pinpoint.ApnsSandboxChannelArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var apnsSandbox = new ApnsSandboxChannel("apnsSandbox", ApnsSandboxChannelArgs.builder()
///             .applicationId(app.applicationId())
///             .certificate(StdFunctions.file(FileArgs.builder()
///                 .input("./certificate.pem")
///                 .build()).result())
///             .privateKey(StdFunctions.file(FileArgs.builder()
///                 .input("./private_key.key")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   apnsSandbox:
///     type: aws:pinpoint:ApnsSandboxChannel
///     name: apns_sandbox
///     properties:
///       applicationId: ${app.applicationId}
///       certificate:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: ./certificate.pem
///           return: result
///       privateKey:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: ./private_key.key
///           return: result
///   app:
///     type: aws:pinpoint:App
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import End User Messaging APNs Sandbox Channel using the `application-id`. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/apnsSandboxChannel:ApnsSandboxChannel apns_sandbox application-id
/// ```
class ApnsSandboxChannel extends pulumi.CustomResource {
  /// Application ID.
  late final pulumi.Output<String> applicationId;
  /// ID assigned to your iOS app. To find this value, choose Certificates, IDs & Profiles, choose App IDs in the Identifiers section, and choose your app. Required if using Key credentials.
  late final pulumi.Output<String?> bundleId;
  /// Pem encoded TLS Certificate from Apple. Required if using Certificate credentials.
  late final pulumi.Output<String?> certificate;
  /// Default authentication method used for APNs Sandbox. __NOTE__: AWS End User Messaging uses this default for every APNs push notification that you send using the console. You can override the default when you send a message programmatically using the AWS End User Messaging API, the AWS CLI, or an AWS SDK. If your default authentication type fails, AWS End User Messaging doesn't attempt to use the other authentication type.
  late final pulumi.Output<String?> defaultAuthenticationMethod;
  /// Whether the channel is enabled or disabled. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// Certificate Private Key file (ie. `.key` file). Required if using Certificate credentials.
  late final pulumi.Output<String?> privateKey;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ID assigned to your Apple developer account team. This value is provided on the Membership page. Required if using Key credentials.
  late final pulumi.Output<String?> teamId;
  /// `.p8` file that you download from your Apple developer account when you create an authentication key. Required if using Key credentials.
  late final pulumi.Output<String?> tokenKey;
  /// ID assigned to your signing key. To find this value, choose Certificates, IDs & Profiles, and choose your key in the Keys section. Required if using Key credentials.
  late final pulumi.Output<String?> tokenKeyId;

  /// Creates a new [ApnsSandboxChannel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApnsSandboxChannel]. {@macro pulumi_pinpoint_apns_sandbox_channel_apns_sandbox_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApnsSandboxChannel(
    String name, {
    ApnsSandboxChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/apnsSandboxChannel:ApnsSandboxChannel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
          additionalSecretOutputs: const ['bundleId', 'certificate', 'privateKey', 'teamId', 'tokenKey', 'tokenKeyId'],
        ) {
    applicationId = registerOutput<String>('applicationId');
    bundleId = registerOutput<String?>('bundleId', isSecret: true);
    certificate = registerOutput<String?>('certificate', isSecret: true);
    defaultAuthenticationMethod = registerOutput<String?>('defaultAuthenticationMethod');
    enabled = registerOutput<bool?>('enabled');
    privateKey = registerOutput<String?>('privateKey', isSecret: true);
    region = registerOutput<String>('region');
    teamId = registerOutput<String?>('teamId', isSecret: true);
    tokenKey = registerOutput<String?>('tokenKey', isSecret: true);
    tokenKeyId = registerOutput<String?>('tokenKeyId', isSecret: true);
  }

  /// Gets an existing [ApnsSandboxChannel] resource's state with the given [name] and [id].
  static ApnsSandboxChannel get(
    String name,
    pulumi.Input<String> id, {
    ApnsSandboxChannelState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ApnsSandboxChannel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ApnsSandboxChannel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/apnsSandboxChannel:ApnsSandboxChannel',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationId = registerOutput<String>('applicationId');
    bundleId = registerOutput<String?>('bundleId', isSecret: true);
    certificate = registerOutput<String?>('certificate', isSecret: true);
    defaultAuthenticationMethod = registerOutput<String?>('defaultAuthenticationMethod');
    enabled = registerOutput<bool?>('enabled');
    privateKey = registerOutput<String?>('privateKey', isSecret: true);
    region = registerOutput<String>('region');
    teamId = registerOutput<String?>('teamId', isSecret: true);
    tokenKey = registerOutput<String?>('tokenKey', isSecret: true);
    tokenKeyId = registerOutput<String?>('tokenKeyId', isSecret: true);
  }

  /// Creates a typed reference to an existing [ApnsSandboxChannel] resource.
  ApnsSandboxChannel.reference(String urn)
    : super(
        'aws:pinpoint/apnsSandboxChannel:ApnsSandboxChannel',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['bundleId', 'certificate', 'privateKey', 'teamId', 'tokenKey', 'tokenKeyId'],
        isResourceReference: true,
      ) {
    applicationId = registerOutput<String>('applicationId');
    bundleId = registerOutput<String?>('bundleId', isSecret: true);
    certificate = registerOutput<String?>('certificate', isSecret: true);
    defaultAuthenticationMethod = registerOutput<String?>('defaultAuthenticationMethod');
    enabled = registerOutput<bool?>('enabled');
    privateKey = registerOutput<String?>('privateKey', isSecret: true);
    region = registerOutput<String>('region');
    teamId = registerOutput<String?>('teamId', isSecret: true);
    tokenKey = registerOutput<String?>('tokenKey', isSecret: true);
    tokenKeyId = registerOutput<String?>('tokenKeyId', isSecret: true);
  }
}
