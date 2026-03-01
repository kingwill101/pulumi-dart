import 'package:pulumi/pulumi.dart' as pulumi;
import 'sdkvoice_sip_rule_args.dart';
import 'sdkvoice_sip_rule_state.dart';
import 'sdkvoice_sip_rule_target_application.dart';

/// A SIP rule associates your SIP media application with a phone number or a Request URI hostname. You can associate a SIP rule with more than one SIP media application. Each application then runs only that rule.
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
/// const example = new aws.chime.SdkvoiceSipRule("example", {
///     name: "example-sip-rule",
///     triggerType: "RequestUriHostname",
///     triggerValue: example_voice_connector.outboundHostName,
///     targetApplications: [{
///         priority: 1,
///         sipMediaApplicationId: example_sma.id,
///         awsRegion: "us-east-1",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.chime.SdkvoiceSipRule("example",
///     name="example-sip-rule",
///     trigger_type="RequestUriHostname",
///     trigger_value=example_voice_connector["outboundHostName"],
///     target_applications=[{
///         "priority": 1,
///         "sip_media_application_id": example_sma["id"],
///         "aws_region": "us-east-1",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Chime.SdkvoiceSipRule("example", new()
///     {
///         Name = "example-sip-rule",
///         TriggerType = "RequestUriHostname",
///         TriggerValue = example_voice_connector.OutboundHostName,
///         TargetApplications = new[]
///         {
///             new Aws.Chime.Inputs.SdkvoiceSipRuleTargetApplicationArgs
///             {
///                 Priority = 1,
///                 SipMediaApplicationId = example_sma.Id,
///                 AwsRegion = "us-east-1",
///             },
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
/// 		_, err := chime.NewSdkvoiceSipRule(ctx, "example", &chime.SdkvoiceSipRuleArgs{
/// 			Name:         pulumi.String("example-sip-rule"),
/// 			TriggerType:  pulumi.String("RequestUriHostname"),
/// 			TriggerValue: pulumi.Any(example_voice_connector.OutboundHostName),
/// 			TargetApplications: chime.SdkvoiceSipRuleTargetApplicationArray{
/// 				&chime.SdkvoiceSipRuleTargetApplicationArgs{
/// 					Priority:              pulumi.Int(1),
/// 					SipMediaApplicationId: pulumi.Any(example_sma.Id),
/// 					AwsRegion:             pulumi.String("us-east-1"),
/// 				},
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
/// import com.pulumi.aws.chime.SdkvoiceSipRule;
/// import com.pulumi.aws.chime.SdkvoiceSipRuleArgs;
/// import com.pulumi.aws.chime.inputs.SdkvoiceSipRuleTargetApplicationArgs;
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
///         var example = new SdkvoiceSipRule("example", SdkvoiceSipRuleArgs.builder()
///             .name("example-sip-rule")
///             .triggerType("RequestUriHostname")
///             .triggerValue(example_voice_connector.outboundHostName())
///             .targetApplications(SdkvoiceSipRuleTargetApplicationArgs.builder()
///                 .priority(1)
///                 .sipMediaApplicationId(example_sma.id())
///                 .awsRegion("us-east-1")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:chime:SdkvoiceSipRule
///     properties:
///       name: example-sip-rule
///       triggerType: RequestUriHostname
///       triggerValue: ${["example-voice-connector"].outboundHostName}
///       targetApplications:
///         - priority: 1
///           sipMediaApplicationId: ${["example-sma"].id}
///           awsRegion: us-east-1
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import a ChimeSDKVoice SIP Rule using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:chime/sdkvoiceSipRule:SdkvoiceSipRule example abcdef123456
/// ```
class SdkvoiceSipRule extends pulumi.CustomResource {
  /// Enables or disables a rule. You must disable rules before you can delete them.
  late final pulumi.Output<bool?> disabled;
  /// The name of the SIP rule.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// List of SIP media applications with priority and AWS Region. Only one SIP application per AWS Region can be used. See `target_applications`.
  late final pulumi.Output<List<SdkvoiceSipRuleTargetApplication>> targetApplications;
  /// The type of trigger assigned to the SIP rule in `trigger_value`. Valid values are `RequestUriHostname` or `ToPhoneNumber`.
  late final pulumi.Output<String> triggerType;
  /// If `trigger_type` is `RequestUriHostname`, the value can be the outbound host name of an Amazon Chime Voice Connector. If `trigger_type` is `ToPhoneNumber`, the value can be a customer-owned phone number in the E164 format. The Sip Media Application specified in the Sip Rule is triggered if the request URI in an incoming SIP request matches the `RequestUriHostname`, or if the "To" header in the incoming SIP request matches the `ToPhoneNumber` value.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> triggerValue;

  /// Creates a new [SdkvoiceSipRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SdkvoiceSipRule]. {@macro pulumi_chime_sdkvoice_sip_rule_sdkvoice_sip_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SdkvoiceSipRule(
    String name, {
    SdkvoiceSipRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chime/sdkvoiceSipRule:SdkvoiceSipRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.disabled = registerOutput<bool?>('disabled');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.targetApplications = registerOutput<List<SdkvoiceSipRuleTargetApplication>>('targetApplications');
    this.triggerType = registerOutput<String>('triggerType');
    this.triggerValue = registerOutput<String>('triggerValue');
  }

  /// Gets an existing [SdkvoiceSipRule] resource's state with the given [name] and [id].
  static SdkvoiceSipRule get(
    String name,
    pulumi.Input<String> id, {
    SdkvoiceSipRuleState? state,
  }) {
    return SdkvoiceSipRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SdkvoiceSipRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chime/sdkvoiceSipRule:SdkvoiceSipRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.disabled = registerOutput<bool?>('disabled');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.targetApplications = registerOutput<List<SdkvoiceSipRuleTargetApplication>>('targetApplications');
    this.triggerType = registerOutput<String>('triggerType');
    this.triggerValue = registerOutput<String>('triggerValue');
  }
}
