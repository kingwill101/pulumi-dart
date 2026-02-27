import 'package:pulumi/pulumi.dart' as pulumi;
import '../configuration_set_delivery_options/configuration_set_delivery_options_sesv2.dart';
import '../configuration_set_reputation_options/configuration_set_reputation_options.dart';
import '../configuration_set_sending_options/configuration_set_sending_options.dart';
import '../configuration_set_suppression_options/configuration_set_suppression_options.dart';
import '../configuration_set_tracking_options/configuration_set_tracking_options_sesv2.dart';
import '../configuration_set_vdm_options/configuration_set_vdm_options.dart';
import 'configuration_set_sesv2_args.dart';

/// Resource for managing an AWS SESv2 (Simple Email V2) Configuration Set.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Configuration Set using the `configuration_set_name`. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/configurationSet:ConfigurationSet example example
/// ```
class ConfigurationSetSesv2 extends pulumi.CustomResource {
  /// ARN of the Configuration Set.
  late final pulumi.Output<String> arn;

  /// The name of the configuration set.
  late final pulumi.Output<String> configurationSetName;

  /// An object that defines the dedicated IP pool that is used to send emails that you send using the configuration set. See `delivery_options` Block for details.
  late final pulumi.Output<ConfigurationSetDeliveryOptionsSesv2?>
      deliveryOptions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// An object that defines whether or not Amazon SES collects reputation metrics for the emails that you send that use the configuration set. See `reputation_options` Block for details.
  late final pulumi.Output<ConfigurationSetReputationOptions> reputationOptions;

  /// An object that defines whether or not Amazon SES can send email that you send using the configuration set. See `sending_options` Block for details.
  late final pulumi.Output<ConfigurationSetSendingOptions> sendingOptions;

  /// An object that contains information about the suppression list preferences for your account. See `suppression_options` Block for details.
  late final pulumi.Output<ConfigurationSetSuppressionOptions?>
      suppressionOptions;

  /// A map of tags to assign to the service. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// An object that defines the open and click tracking options for emails that you send using the configuration set. See `tracking_options` Block for details.
  late final pulumi.Output<ConfigurationSetTrackingOptionsSesv2?>
      trackingOptions;

  /// An object that defines the VDM settings that apply to emails that you send using the configuration set. See `vdm_options` Block for details.
  late final pulumi.Output<ConfigurationSetVdmOptions?> vdmOptions;

  ConfigurationSetSesv2(
    String name, {
    ConfigurationSetSesv2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/configurationSet:ConfigurationSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.configurationSetName = registerOutput<String>('configurationSetName');
    this.deliveryOptions =
        registerOutput<ConfigurationSetDeliveryOptionsSesv2?>(
            'deliveryOptions');
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
        registerOutput<ConfigurationSetTrackingOptionsSesv2?>(
            'trackingOptions');
    this.vdmOptions = registerOutput<ConfigurationSetVdmOptions?>('vdmOptions');
  }
}
