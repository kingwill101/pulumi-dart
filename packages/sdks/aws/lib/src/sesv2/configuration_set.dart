import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_set_args.dart';
import 'configuration_set_delivery_options.dart';
import 'configuration_set_reputation_options.dart';
import 'configuration_set_sending_options.dart';
import 'configuration_set_state.dart';
import 'configuration_set_suppression_options.dart';
import 'configuration_set_tracking_options.dart';
import 'configuration_set_vdm_options.dart';

/// Resource for managing an AWS SESv2 (Simple Email V2) Configuration Set.
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
/// const example = new aws.sesv2.ConfigurationSet("example", {
///     configurationSetName: "example",
///     deliveryOptions: {
///         maxDeliverySeconds: 300,
///         tlsPolicy: "REQUIRE",
///     },
///     reputationOptions: {
///         reputationMetricsEnabled: false,
///     },
///     sendingOptions: {
///         sendingEnabled: true,
///     },
///     suppressionOptions: {
///         suppressedReasons: [
///             "BOUNCE",
///             "COMPLAINT",
///         ],
///     },
///     trackingOptions: {
///         customRedirectDomain: "example.com",
///         httpsPolicy: "REQUIRE",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.ConfigurationSet("example",
///     configuration_set_name="example",
///     delivery_options={
///         "max_delivery_seconds": 300,
///         "tls_policy": "REQUIRE",
///     },
///     reputation_options={
///         "reputation_metrics_enabled": False,
///     },
///     sending_options={
///         "sending_enabled": True,
///     },
///     suppression_options={
///         "suppressed_reasons": [
///             "BOUNCE",
///             "COMPLAINT",
///         ],
///     },
///     tracking_options={
///         "custom_redirect_domain": "example.com",
///         "https_policy": "REQUIRE",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SesV2.ConfigurationSet("example", new()
///     {
///         ConfigurationSetName = "example",
///         DeliveryOptions = new Aws.SesV2.Inputs.ConfigurationSetDeliveryOptionsArgs
///         {
///             MaxDeliverySeconds = 300,
///             TlsPolicy = "REQUIRE",
///         },
///         ReputationOptions = new Aws.SesV2.Inputs.ConfigurationSetReputationOptionsArgs
///         {
///             ReputationMetricsEnabled = false,
///         },
///         SendingOptions = new Aws.SesV2.Inputs.ConfigurationSetSendingOptionsArgs
///         {
///             SendingEnabled = true,
///         },
///         SuppressionOptions = new Aws.SesV2.Inputs.ConfigurationSetSuppressionOptionsArgs
///         {
///             SuppressedReasons = new[]
///             {
///                 "BOUNCE",
///                 "COMPLAINT",
///             },
///         },
///         TrackingOptions = new Aws.SesV2.Inputs.ConfigurationSetTrackingOptionsArgs
///         {
///             CustomRedirectDomain = "example.com",
///             HttpsPolicy = "REQUIRE",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sesv2.NewConfigurationSet(ctx, "example", &sesv2.ConfigurationSetArgs{
/// 			ConfigurationSetName: pulumi.String("example"),
/// 			DeliveryOptions: &sesv2.ConfigurationSetDeliveryOptionsArgs{
/// 				MaxDeliverySeconds: pulumi.Int(300),
/// 				TlsPolicy:          pulumi.String("REQUIRE"),
/// 			},
/// 			ReputationOptions: &sesv2.ConfigurationSetReputationOptionsArgs{
/// 				ReputationMetricsEnabled: pulumi.Bool(false),
/// 			},
/// 			SendingOptions: &sesv2.ConfigurationSetSendingOptionsArgs{
/// 				SendingEnabled: pulumi.Bool(true),
/// 			},
/// 			SuppressionOptions: &sesv2.ConfigurationSetSuppressionOptionsArgs{
/// 				SuppressedReasons: pulumi.StringArray{
/// 					pulumi.String("BOUNCE"),
/// 					pulumi.String("COMPLAINT"),
/// 				},
/// 			},
/// 			TrackingOptions: &sesv2.ConfigurationSetTrackingOptionsArgs{
/// 				CustomRedirectDomain: pulumi.String("example.com"),
/// 				HttpsPolicy:          pulumi.String("REQUIRE"),
/// 			},
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
/// import com.pulumi.aws.sesv2.ConfigurationSet;
/// import com.pulumi.aws.sesv2.ConfigurationSetArgs;
/// import com.pulumi.aws.sesv2.inputs.ConfigurationSetDeliveryOptionsArgs;
/// import com.pulumi.aws.sesv2.inputs.ConfigurationSetReputationOptionsArgs;
/// import com.pulumi.aws.sesv2.inputs.ConfigurationSetSendingOptionsArgs;
/// import com.pulumi.aws.sesv2.inputs.ConfigurationSetSuppressionOptionsArgs;
/// import com.pulumi.aws.sesv2.inputs.ConfigurationSetTrackingOptionsArgs;
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
///         var example = new ConfigurationSet("example", ConfigurationSetArgs.builder()
///             .configurationSetName("example")
///             .deliveryOptions(ConfigurationSetDeliveryOptionsArgs.builder()
///                 .maxDeliverySeconds(300)
///                 .tlsPolicy("REQUIRE")
///                 .build())
///             .reputationOptions(ConfigurationSetReputationOptionsArgs.builder()
///                 .reputationMetricsEnabled(false)
///                 .build())
///             .sendingOptions(ConfigurationSetSendingOptionsArgs.builder()
///                 .sendingEnabled(true)
///                 .build())
///             .suppressionOptions(ConfigurationSetSuppressionOptionsArgs.builder()
///                 .suppressedReasons(
///                     "BOUNCE",
///                     "COMPLAINT")
///                 .build())
///             .trackingOptions(ConfigurationSetTrackingOptionsArgs.builder()
///                 .customRedirectDomain("example.com")
///                 .httpsPolicy("REQUIRE")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sesv2:ConfigurationSet
///     properties:
///       configurationSetName: example
///       deliveryOptions:
///         maxDeliverySeconds: 300
///         tlsPolicy: REQUIRE
///       reputationOptions:
///         reputationMetricsEnabled: false
///       sendingOptions:
///         sendingEnabled: true
///       suppressionOptions:
///         suppressedReasons:
///           - BOUNCE
///           - COMPLAINT
///       trackingOptions:
///         customRedirectDomain: example.com
///         httpsPolicy: REQUIRE
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Configuration Set using the `configuration_set_name`. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/configurationSet:ConfigurationSet example example
/// ```
class ConfigurationSet extends pulumi.CustomResource {
  /// ARN of the Configuration Set.
  late final pulumi.Output<String> arn;
  /// The name of the configuration set.
  late final pulumi.Output<String> configurationSetName;
  /// An object that defines the dedicated IP pool that is used to send emails that you send using the configuration set. See `delivery_options` Block for details.
  late final pulumi.Output<ConfigurationSetDeliveryOptions?> deliveryOptions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// An object that defines whether or not Amazon SES collects reputation metrics for the emails that you send that use the configuration set. See `reputation_options` Block for details.
  late final pulumi.Output<ConfigurationSetReputationOptions> reputationOptions;
  /// An object that defines whether or not Amazon SES can send email that you send using the configuration set. See `sending_options` Block for details.
  late final pulumi.Output<ConfigurationSetSendingOptions> sendingOptions;
  /// An object that contains information about the suppression list preferences for your account. See `suppression_options` Block for details.
  late final pulumi.Output<ConfigurationSetSuppressionOptions?> suppressionOptions;
  /// A map of tags to assign to the service. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// An object that defines the open and click tracking options for emails that you send using the configuration set. See `tracking_options` Block for details.
  late final pulumi.Output<ConfigurationSetTrackingOptions?> trackingOptions;
  /// An object that defines the VDM settings that apply to emails that you send using the configuration set. See `vdm_options` Block for details.
  late final pulumi.Output<ConfigurationSetVdmOptions?> vdmOptions;

  /// Creates a new [ConfigurationSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConfigurationSet]. {@macro pulumi_sesv2_configuration_set_configuration_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConfigurationSet(
    String name, {
    ConfigurationSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/configurationSet:ConfigurationSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    configurationSetName = registerOutput<String>('configurationSetName');
    deliveryOptions = registerOutput<ConfigurationSetDeliveryOptions?>('deliveryOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationSetDeliveryOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    reputationOptions = registerOutput<ConfigurationSetReputationOptions>('reputationOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationSetReputationOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sendingOptions = registerOutput<ConfigurationSetSendingOptions>('sendingOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationSetSendingOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    suppressionOptions = registerOutput<ConfigurationSetSuppressionOptions?>('suppressionOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationSetSuppressionOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    trackingOptions = registerOutput<ConfigurationSetTrackingOptions?>('trackingOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationSetTrackingOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vdmOptions = registerOutput<ConfigurationSetVdmOptions?>('vdmOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationSetVdmOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ConfigurationSet] resource's state with the given [name] and [id].
  static ConfigurationSet get(
    String name,
    pulumi.Input<String> id, {
    ConfigurationSetState? state,
  }) {
    return ConfigurationSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ConfigurationSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/configurationSet:ConfigurationSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    configurationSetName = registerOutput<String>('configurationSetName');
    deliveryOptions = registerOutput<ConfigurationSetDeliveryOptions?>('deliveryOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationSetDeliveryOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    reputationOptions = registerOutput<ConfigurationSetReputationOptions>('reputationOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationSetReputationOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sendingOptions = registerOutput<ConfigurationSetSendingOptions>('sendingOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationSetSendingOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    suppressionOptions = registerOutput<ConfigurationSetSuppressionOptions?>('suppressionOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationSetSuppressionOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    trackingOptions = registerOutput<ConfigurationSetTrackingOptions?>('trackingOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationSetTrackingOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vdmOptions = registerOutput<ConfigurationSetVdmOptions?>('vdmOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigurationSetVdmOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
