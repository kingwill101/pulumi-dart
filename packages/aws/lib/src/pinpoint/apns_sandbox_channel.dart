import 'package:pulumi/pulumi.dart' as pulumi;
import 'apns_sandbox_channel_args.dart';

/// Provides a Pinpoint APNs Sandbox Channel resource.
///
/// > **Note:** All arguments, including certificates and tokens, will be stored in the raw state as plain-text.
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
/// Using `pulumi import`, import Pinpoint APNs Sandbox Channel using the `application-id`. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/apnsSandboxChannel:ApnsSandboxChannel apns_sandbox application-id
/// ```
class ApnsSandboxChannel extends pulumi.CustomResource {
  /// The application ID.
  late final pulumi.Output<String> applicationId;

  /// The ID assigned to your iOS app. To find this value, choose Certificates, IDs & Profiles, choose App IDs in the Identifiers section, and choose your app.
  late final pulumi.Output<String?> bundleId;

  /// The pem encoded TLS Certificate from Apple.
  late final pulumi.Output<String?> certificate;

  /// The default authentication method used for APNs Sandbox.
  /// __NOTE__: Amazon Pinpoint uses this default for every APNs push notification that you send using the console.
  /// You can override the default when you send a message programmatically using the Amazon Pinpoint API, the AWS CLI, or an AWS SDK.
  /// If your default authentication type fails, Amazon Pinpoint doesn't attempt to use the other authentication type.
  ///
  /// One of the following sets of credentials is also required.
  ///
  /// If you choose to use __Certificate credentials__ you will have to provide:
  late final pulumi.Output<String?> defaultAuthenticationMethod;

  /// Whether the channel is enabled or disabled. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;

  /// The Certificate Private Key file (ie. `.key` file).
  ///
  /// If you choose to use __Key credentials__ you will have to provide:
  late final pulumi.Output<String?> privateKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID assigned to your Apple developer account team. This value is provided on the Membership page.
  late final pulumi.Output<String?> teamId;

  /// The `.p8` file that you download from your Apple developer account when you create an authentication key.
  late final pulumi.Output<String?> tokenKey;

  /// The ID assigned to your signing key. To find this value, choose Certificates, IDs & Profiles, and choose your key in the Keys section.
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.bundleId = registerOutput<String?>('bundleId');
    this.certificate = registerOutput<String?>('certificate');
    this.defaultAuthenticationMethod =
        registerOutput<String?>('defaultAuthenticationMethod');
    this.enabled = registerOutput<bool?>('enabled');
    this.privateKey = registerOutput<String?>('privateKey');
    this.region = registerOutput<String>('region');
    this.teamId = registerOutput<String?>('teamId');
    this.tokenKey = registerOutput<String?>('tokenKey');
    this.tokenKeyId = registerOutput<String?>('tokenKeyId');
  }
}
