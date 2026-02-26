import 'package:pulumi/pulumi.dart';
import '../configuration_set_delivery_options/configuration_set_delivery_options2.dart';
import '../configuration_set_reputation_options/configuration_set_reputation_options.dart';
import '../configuration_set_sending_options/configuration_set_sending_options.dart';
import '../configuration_set_suppression_options/configuration_set_suppression_options.dart';
import '../configuration_set_tracking_options/configuration_set_tracking_options2.dart';
import '../configuration_set_vdm_options/configuration_set_vdm_options.dart';
import 'configuration_set_args2.dart';

/// Resource for managing an AWS SESv2 (Simple Email V2) Configuration Set.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sesv2.ConfigurationSet("example", {
/// configurationSetName: "example",
/// deliveryOptions: {
/// maxDeliverySeconds: 300,
/// tlsPolicy: "REQUIRE",
/// },
/// reputationOptions: {
/// reputationMetricsEnabled: false,
/// },
/// sendingOptions: {
/// sendingEnabled: true,
/// },
/// suppressionOptions: {
/// suppressedReasons: [
/// "BOUNCE",
/// "COMPLAINT",
/// ],
/// },
/// trackingOptions: {
/// customRedirectDomain: "example.com",
/// httpsPolicy: "REQUIRE",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.ConfigurationSet("example",
/// configuration_set_name="example",
/// delivery_options={
/// "max_delivery_seconds": 300,
/// "tls_policy": "REQUIRE",
/// },
/// reputation_options={
/// "reputation_metrics_enabled": False,
/// },
/// sending_options={
/// "sending_enabled": True,
/// },
/// suppression_options={
/// "suppressed_reasons": [
/// "BOUNCE",
/// "COMPLAINT",
/// ],
/// },
/// tracking_options={
/// "custom_redirect_domain": "example.com",
/// "https_policy": "REQUIRE",
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
/// var example = new Aws.SesV2.ConfigurationSet("example", new()
/// {
/// ConfigurationSetName = "example",
/// DeliveryOptions = new Aws.SesV2.Inputs.ConfigurationSetDeliveryOptionsArgs
/// {
/// MaxDeliverySeconds = 300,
/// TlsPolicy = "REQUIRE",
/// },
/// ReputationOptions = new Aws.SesV2.Inputs.ConfigurationSetReputationOptionsArgs
/// {
/// ReputationMetricsEnabled = false,
/// },
/// SendingOptions = new Aws.SesV2.Inputs.ConfigurationSetSendingOptionsArgs
/// {
/// SendingEnabled = true,
/// },
/// SuppressionOptions = new Aws.SesV2.Inputs.ConfigurationSetSuppressionOptionsArgs
/// {
/// SuppressedReasons = new[]
/// {
/// "BOUNCE",
/// "COMPLAINT",
/// },
/// },
/// TrackingOptions = new Aws.SesV2.Inputs.ConfigurationSetTrackingOptionsArgs
/// {
/// CustomRedirectDomain = "example.com",
/// HttpsPolicy = "REQUIRE",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sesv2.NewConfigurationSet(ctx, "example", &sesv2.ConfigurationSetArgs{
/// ConfigurationSetName: pulumi.String("example"),
/// DeliveryOptions: &sesv2.ConfigurationSetDeliveryOptionsArgs{
/// MaxDeliverySeconds: pulumi.Int(300),
/// TlsPolicy:          pulumi.String("REQUIRE"),
/// },
/// ReputationOptions: &sesv2.ConfigurationSetReputationOptionsArgs{
/// ReputationMetricsEnabled: pulumi.Bool(false),
/// },
/// SendingOptions: &sesv2.ConfigurationSetSendingOptionsArgs{
/// SendingEnabled: pulumi.Bool(true),
/// },
/// SuppressionOptions: &sesv2.ConfigurationSetSuppressionOptionsArgs{
/// SuppressedReasons: pulumi.StringArray{
/// pulumi.String("BOUNCE"),
/// pulumi.String("COMPLAINT"),
/// },
/// },
/// TrackingOptions: &sesv2.ConfigurationSetTrackingOptionsArgs{
/// CustomRedirectDomain: pulumi.String("example.com"),
/// HttpsPolicy:          pulumi.String("REQUIRE"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new ConfigurationSet("example", ConfigurationSetArgs.builder()
/// .configurationSetName("example")
/// .deliveryOptions(ConfigurationSetDeliveryOptionsArgs.builder()
/// .maxDeliverySeconds(300)
/// .tlsPolicy("REQUIRE")
/// .build())
/// .reputationOptions(ConfigurationSetReputationOptionsArgs.builder()
/// .reputationMetricsEnabled(false)
/// .build())
/// .sendingOptions(ConfigurationSetSendingOptionsArgs.builder()
/// .sendingEnabled(true)
/// .build())
/// .suppressionOptions(ConfigurationSetSuppressionOptionsArgs.builder()
/// .suppressedReasons(
/// "BOUNCE",
/// "COMPLAINT")
/// .build())
/// .trackingOptions(ConfigurationSetTrackingOptionsArgs.builder()
/// .customRedirectDomain("example.com")
/// .httpsPolicy("REQUIRE")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:sesv2:ConfigurationSet
/// properties:
/// configurationSetName: example
/// deliveryOptions:
/// maxDeliverySeconds: 300
/// tlsPolicy: REQUIRE
/// reputationOptions:
/// reputationMetricsEnabled: false
/// sendingOptions:
/// sendingEnabled: true
/// suppressionOptions:
/// suppressedReasons:
/// - BOUNCE
/// - COMPLAINT
/// trackingOptions:
/// customRedirectDomain: example.com
/// httpsPolicy: REQUIRE
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Configuration Set using the <span pulumi-lang-nodejs="`configurationSetName`" pulumi-lang-dotnet="`ConfigurationSetName`" pulumi-lang-go="`configurationSetName`" pulumi-lang-python="`configuration_set_name`" pulumi-lang-yaml="`configurationSetName`" pulumi-lang-java="`configurationSetName`">`configuration_set_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/configurationSet:ConfigurationSet example example
/// ```
class ConfigurationSet2 extends CustomResource {
  /// ARN of the Configuration Set.
  late final Output<String> arn;

  /// The name of the configuration set.
  late final Output<String> configurationSetName;

  /// An object that defines the dedicated IP pool that is used to send emails that you send using the configuration set. See <span pulumi-lang-nodejs="`deliveryOptions`" pulumi-lang-dotnet="`DeliveryOptions`" pulumi-lang-go="`deliveryOptions`" pulumi-lang-python="`delivery_options`" pulumi-lang-yaml="`deliveryOptions`" pulumi-lang-java="`deliveryOptions`">`delivery_options`</span> Block for details.
  late final Output<ConfigurationSetDeliveryOptions2?> deliveryOptions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// An object that defines whether or not Amazon SES collects reputation metrics for the emails that you send that use the configuration set. See <span pulumi-lang-nodejs="`reputationOptions`" pulumi-lang-dotnet="`ReputationOptions`" pulumi-lang-go="`reputationOptions`" pulumi-lang-python="`reputation_options`" pulumi-lang-yaml="`reputationOptions`" pulumi-lang-java="`reputationOptions`">`reputation_options`</span> Block for details.
  late final Output<ConfigurationSetReputationOptions> reputationOptions;

  /// An object that defines whether or not Amazon SES can send email that you send using the configuration set. See <span pulumi-lang-nodejs="`sendingOptions`" pulumi-lang-dotnet="`SendingOptions`" pulumi-lang-go="`sendingOptions`" pulumi-lang-python="`sending_options`" pulumi-lang-yaml="`sendingOptions`" pulumi-lang-java="`sendingOptions`">`sending_options`</span> Block for details.
  late final Output<ConfigurationSetSendingOptions> sendingOptions;

  /// An object that contains information about the suppression list preferences for your account. See <span pulumi-lang-nodejs="`suppressionOptions`" pulumi-lang-dotnet="`SuppressionOptions`" pulumi-lang-go="`suppressionOptions`" pulumi-lang-python="`suppression_options`" pulumi-lang-yaml="`suppressionOptions`" pulumi-lang-java="`suppressionOptions`">`suppression_options`</span> Block for details.
  late final Output<ConfigurationSetSuppressionOptions?> suppressionOptions;

  /// A map of tags to assign to the service. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// An object that defines the open and click tracking options for emails that you send using the configuration set. See <span pulumi-lang-nodejs="`trackingOptions`" pulumi-lang-dotnet="`TrackingOptions`" pulumi-lang-go="`trackingOptions`" pulumi-lang-python="`tracking_options`" pulumi-lang-yaml="`trackingOptions`" pulumi-lang-java="`trackingOptions`">`tracking_options`</span> Block for details.
  late final Output<ConfigurationSetTrackingOptions2?> trackingOptions;

  /// An object that defines the VDM settings that apply to emails that you send using the configuration set. See <span pulumi-lang-nodejs="`vdmOptions`" pulumi-lang-dotnet="`VdmOptions`" pulumi-lang-go="`vdmOptions`" pulumi-lang-python="`vdm_options`" pulumi-lang-yaml="`vdmOptions`" pulumi-lang-java="`vdmOptions`">`vdm_options`</span> Block for details.
  late final Output<ConfigurationSetVdmOptions?> vdmOptions;

  ConfigurationSet2(
    String name, {
    ConfigurationSetArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/configurationSet:ConfigurationSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.configurationSetName = registerOutput<String>('configurationSetName');
    this.deliveryOptions =
        registerOutput<ConfigurationSetDeliveryOptions2?>('deliveryOptions');
    this.region = registerOutput<String>('region');
    this.reputationOptions =
        registerOutput<ConfigurationSetReputationOptions>('reputationOptions');
    this.sendingOptions =
        registerOutput<ConfigurationSetSendingOptions>('sendingOptions');
    this.suppressionOptions =
        registerOutput<ConfigurationSetSuppressionOptions?>(
            'suppressionOptions');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.trackingOptions =
        registerOutput<ConfigurationSetTrackingOptions2?>('trackingOptions');
    this.vdmOptions = registerOutput<ConfigurationSetVdmOptions?>('vdmOptions');
  }
}
