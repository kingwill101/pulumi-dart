import 'package:pulumi/pulumi.dart' as pulumi;
import 'sdkvoice_global_settings_args.dart';
import 'sdkvoice_global_settings_state.dart';
import 'sdkvoice_global_settings_voice_connector.dart';

/// Resource for managing Amazon Chime SDK Voice Global Settings.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.chime.SdkvoiceGlobalSettings("example", {voiceConnector: {
///     cdrBucket: "example-bucket-name",
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.chime.SdkvoiceGlobalSettings("example", voice_connector={
///     "cdr_bucket": "example-bucket-name",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Chime.SdkvoiceGlobalSettings("example", new()
///     {
///         VoiceConnector = new Aws.Chime.Inputs.SdkvoiceGlobalSettingsVoiceConnectorArgs
///         {
///             CdrBucket = "example-bucket-name",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/chime"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chime.NewSdkvoiceGlobalSettings(ctx, "example", &chime.SdkvoiceGlobalSettingsArgs{
/// 			VoiceConnector: &chime.SdkvoiceGlobalSettingsVoiceConnectorArgs{
/// 				CdrBucket: pulumi.String("example-bucket-name"),
/// 			},
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
///   }
/// }
///
/// resource "aws_chime_sdkvoiceglobalsettings" "example" {
///   voice_connector = {
///     cdr_bucket = "example-bucket-name"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.chime.SdkvoiceGlobalSettings;
/// import com.pulumi.aws.chime.SdkvoiceGlobalSettingsArgs;
/// import com.pulumi.aws.chime.inputs.SdkvoiceGlobalSettingsVoiceConnectorArgs;
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
///         var example = new SdkvoiceGlobalSettings("example", SdkvoiceGlobalSettingsArgs.builder()
///             .voiceConnector(SdkvoiceGlobalSettingsVoiceConnectorArgs.builder()
///                 .cdrBucket("example-bucket-name")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:chime:SdkvoiceGlobalSettings
///     properties:
///       voiceConnector:
///         cdrBucket: example-bucket-name
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS Chime SDK Voice Global Settings using the `id` (AWS account ID). For example:
///
/// ```sh
/// $ pulumi import aws:chime/sdkvoiceGlobalSettings:SdkvoiceGlobalSettings example 123456789012
/// ```
class SdkvoiceGlobalSettings extends pulumi.CustomResource {
  /// The Voice Connector settings. See voice_connector.
  late final pulumi.Output<SdkvoiceGlobalSettingsVoiceConnector> voiceConnector;

  /// Creates a new [SdkvoiceGlobalSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SdkvoiceGlobalSettings]. {@macro pulumi_chime_sdkvoice_global_settings_sdkvoice_global_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SdkvoiceGlobalSettings(
    String name, {
    SdkvoiceGlobalSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chime/sdkvoiceGlobalSettings:SdkvoiceGlobalSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    voiceConnector = registerOutput<SdkvoiceGlobalSettingsVoiceConnector>('voiceConnector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SdkvoiceGlobalSettingsVoiceConnector.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [SdkvoiceGlobalSettings] resource's state with the given [name] and [id].
  static SdkvoiceGlobalSettings get(
    String name,
    pulumi.Input<String> id, {
    SdkvoiceGlobalSettingsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SdkvoiceGlobalSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SdkvoiceGlobalSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chime/sdkvoiceGlobalSettings:SdkvoiceGlobalSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    voiceConnector = registerOutput<SdkvoiceGlobalSettingsVoiceConnector>('voiceConnector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SdkvoiceGlobalSettingsVoiceConnector.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [SdkvoiceGlobalSettings] resource.
  SdkvoiceGlobalSettings.reference(String urn)
    : super(
        'aws:chime/sdkvoiceGlobalSettings:SdkvoiceGlobalSettings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    voiceConnector = registerOutput<SdkvoiceGlobalSettingsVoiceConnector>('voiceConnector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SdkvoiceGlobalSettingsVoiceConnector.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
