import 'package:pulumi/pulumi.dart' as pulumi;
import 'smsvoicev2_protect_configuration_args.dart';
import 'smsvoicev2_protect_configuration_state.dart';

/// Manages an AWS End User Messaging SMS Protect Configuration. A protect configuration sets country rules that allow, block, monitor, or filter messages sent to each destination country.
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
/// const example = new aws.pinpoint.Smsvoicev2ProtectConfiguration("example", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.pinpoint.Smsvoicev2ProtectConfiguration("example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Pinpoint.Smsvoicev2ProtectConfiguration("example");
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
/// 		_, err := pinpoint.NewSmsvoicev2ProtectConfiguration(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_pinpoint_smsvoicev2_protect_configuration" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.pinpoint.Smsvoicev2ProtectConfiguration;
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
///         var example = new Smsvoicev2ProtectConfiguration("example");
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:pinpoint:Smsvoicev2ProtectConfiguration
/// ```
///
///
/// ### Country Rules
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.pinpoint.Smsvoicev2ProtectConfiguration("example", {
///     deletionProtectionEnabled: true,
///     smsCountryRules: {
///         CA: "FILTER",
///         DE: "MONITOR",
///         RU: "BLOCK",
///     },
///     voiceCountryRules: {
///         RU: "BLOCK",
///     },
///     tags: {
///         Name: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.pinpoint.Smsvoicev2ProtectConfiguration("example",
///     deletion_protection_enabled=True,
///     sms_country_rules={
///         "CA": "FILTER",
///         "DE": "MONITOR",
///         "RU": "BLOCK",
///     },
///     voice_country_rules={
///         "RU": "BLOCK",
///     },
///     tags={
///         "Name": "example",
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
///     var example = new Aws.Pinpoint.Smsvoicev2ProtectConfiguration("example", new()
///     {
///         DeletionProtectionEnabled = true,
///         SmsCountryRules =
///         {
///             { "CA", "FILTER" },
///             { "DE", "MONITOR" },
///             { "RU", "BLOCK" },
///         },
///         VoiceCountryRules =
///         {
///             { "RU", "BLOCK" },
///         },
///         Tags =
///         {
///             { "Name", "example" },
///         },
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
/// 		_, err := pinpoint.NewSmsvoicev2ProtectConfiguration(ctx, "example", &pinpoint.Smsvoicev2ProtectConfigurationArgs{
/// 			DeletionProtectionEnabled: pulumi.Bool(true),
/// 			SmsCountryRules: pulumi.StringMap{
/// 				"CA": pulumi.String("FILTER"),
/// 				"DE": pulumi.String("MONITOR"),
/// 				"RU": pulumi.String("BLOCK"),
/// 			},
/// 			VoiceCountryRules: pulumi.StringMap{
/// 				"RU": pulumi.String("BLOCK"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example"),
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
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_pinpoint_smsvoicev2_protect_configuration" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   deletion_protection_enabled = true
///   sms_country_rules = {
///     "CA" = "FILTER"
///     "DE" = "MONITOR"
///     "RU" = "BLOCK"
///   }
///   voice_country_rules = {
///     "RU" = "BLOCK"
///   }
///   tags = {
///     "Name" = "example"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.pinpoint.Smsvoicev2ProtectConfiguration;
/// import com.pulumi.aws.pinpoint.Smsvoicev2ProtectConfigurationArgs;
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
///         var example = new Smsvoicev2ProtectConfiguration("example", Smsvoicev2ProtectConfigurationArgs.builder()
///             .deletionProtectionEnabled(true)
///             .smsCountryRules(Map.ofEntries(
///                 Map.entry("CA", "FILTER"),
///                 Map.entry("DE", "MONITOR"),
///                 Map.entry("RU", "BLOCK")
///             ))
///             .voiceCountryRules(Map.of("RU", "BLOCK"))
///             .tags(Map.of("Name", "example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:pinpoint:Smsvoicev2ProtectConfiguration
///     properties:
///       deletionProtectionEnabled: true
///       smsCountryRules:
///         CA: FILTER
///         DE: MONITOR
///         RU: BLOCK
///       voiceCountryRules:
///         RU: BLOCK
///       tags:
///         Name: example
/// ```
///
///
/// ## Import
///
/// &gt; **Note:** AWS doesn't allow deleting a protect configuration while it is associated with a configuration set, is the account default, or has deletion protection enabled.
///
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the protect configuration.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import an AWS End User Messaging SMS Protect Configuration using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/smsvoicev2ProtectConfiguration:Smsvoicev2ProtectConfiguration example protect-abcdef0123456789abcdef0123456789
/// ```
class Smsvoicev2ProtectConfiguration extends pulumi.CustomResource {
  /// Whether the protect configuration is the account default.
  late final pulumi.Output<bool> accountDefault;
  /// ARN of the protect configuration.
  late final pulumi.Output<String> arn;
  /// Time when the protect configuration was created, in [RFC3339 format](https://datatracker.ietf.org/doc/html/rfc3339#section-5.8).
  late final pulumi.Output<String> createdTimestamp;
  /// Whether deletion protection is enabled. When `true`, the protect configuration can't be deleted.
  late final pulumi.Output<bool> deletionProtectionEnabled;
  /// Map of two-character ISO 3166-1 alpha-2 country codes to protect status for MMS messages. Valid value is `BLOCK`.
  late final pulumi.Output<Map<String, String>?> mmsCountryRules;
  /// Map of two-character ISO 3166-1 alpha-2 country codes to protect status for RCS messages. Valid value is `BLOCK`.
  late final pulumi.Output<Map<String, String>?> rcsCountryRules;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of two-character ISO 3166-1 alpha-2 country codes to protect status for SMS messages. Valid values are `BLOCK`, `FILTER`, and `MONITOR`.
  late final pulumi.Output<Map<String, String>?> smsCountryRules;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Map of two-character ISO 3166-1 alpha-2 country codes to protect status for voice messages. Valid value is `BLOCK`.
  ///
  /// &gt; **Note:** AWS allows messages to every country by default. Each `*_country_rules` map lists only the countries that differ from that default, so `ALLOW` is not a valid value. Removing a country from a map resets it to `ALLOW`. Removing a map resets every country for that message type to `ALLOW`.
  ///
  /// &gt; **Note:** The countries each message type supports differ and are validated by AWS. See [Supported countries and regions](https://docs.aws.amazon.com/sms-voice/latest/userguide/phone-numbers-sms-by-country.html) in the AWS End User Messaging SMS User Guide. `FILTER` and `MONITOR` incur additional charges for AIT risk evaluation. See [Country rule modes](https://docs.aws.amazon.com/sms-voice/latest/userguide/filter-and-monitor-messages.html) for details.
  late final pulumi.Output<Map<String, String>?> voiceCountryRules;

  /// Creates a new [Smsvoicev2ProtectConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Smsvoicev2ProtectConfiguration]. {@macro pulumi_pinpoint_smsvoicev2_protect_configuration_smsvoicev2_protect_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Smsvoicev2ProtectConfiguration(
    String name, {
    Smsvoicev2ProtectConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/smsvoicev2ProtectConfiguration:Smsvoicev2ProtectConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.55.0').merge(options),
        ) {
    accountDefault = registerOutput<bool>('accountDefault');
    arn = registerOutput<String>('arn');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    deletionProtectionEnabled = registerOutput<bool>('deletionProtectionEnabled');
    mmsCountryRules = registerOutput<Map<String, String>?>('mmsCountryRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    rcsCountryRules = registerOutput<Map<String, String>?>('rcsCountryRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    region = registerOutput<String>('region');
    smsCountryRules = registerOutput<Map<String, String>?>('smsCountryRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    voiceCountryRules = registerOutput<Map<String, String>?>('voiceCountryRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Smsvoicev2ProtectConfiguration] resource's state with the given [name] and [id].
  static Smsvoicev2ProtectConfiguration get(
    String name,
    pulumi.Input<String> id, {
    Smsvoicev2ProtectConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Smsvoicev2ProtectConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Smsvoicev2ProtectConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/smsvoicev2ProtectConfiguration:Smsvoicev2ProtectConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountDefault = registerOutput<bool>('accountDefault');
    arn = registerOutput<String>('arn');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    deletionProtectionEnabled = registerOutput<bool>('deletionProtectionEnabled');
    mmsCountryRules = registerOutput<Map<String, String>?>('mmsCountryRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    rcsCountryRules = registerOutput<Map<String, String>?>('rcsCountryRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    region = registerOutput<String>('region');
    smsCountryRules = registerOutput<Map<String, String>?>('smsCountryRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    voiceCountryRules = registerOutput<Map<String, String>?>('voiceCountryRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Smsvoicev2ProtectConfiguration] resource.
  Smsvoicev2ProtectConfiguration.reference(String urn)
    : super(
        'aws:pinpoint/smsvoicev2ProtectConfiguration:Smsvoicev2ProtectConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountDefault = registerOutput<bool>('accountDefault');
    arn = registerOutput<String>('arn');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    deletionProtectionEnabled = registerOutput<bool>('deletionProtectionEnabled');
    mmsCountryRules = registerOutput<Map<String, String>?>('mmsCountryRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    rcsCountryRules = registerOutput<Map<String, String>?>('rcsCountryRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    region = registerOutput<String>('region');
    smsCountryRules = registerOutput<Map<String, String>?>('smsCountryRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    voiceCountryRules = registerOutput<Map<String, String>?>('voiceCountryRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
