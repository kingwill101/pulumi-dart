// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_set_delivery_options.dart';
import 'configuration_set_reputation_options.dart';
import 'configuration_set_sending_options.dart';
import 'configuration_set_suppression_options.dart';
import 'configuration_set_tracking_options.dart';
import 'configuration_set_vdm_options.dart';

/// {@template pulumi_sesv2_configuration_set_configuration_set_args_doc}
/// The set of arguments for ConfigurationSet.
/// {@endtemplate}
/// {@macro pulumi_sesv2_configuration_set_configuration_set_args_doc}
class ConfigurationSetArgs {
  /// The name of the configuration set.
  final pulumi.Input<String> configurationSetName;

  /// An object that defines the dedicated IP pool that is used to send emails that you send using the configuration set. See `delivery_options` Block for details.
  final pulumi.Input<ConfigurationSetDeliveryOptions>? deliveryOptions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// An object that defines whether or not Amazon SES collects reputation metrics for the emails that you send that use the configuration set. See `reputation_options` Block for details.
  final pulumi.Input<ConfigurationSetReputationOptions>? reputationOptions;

  /// An object that defines whether or not Amazon SES can send email that you send using the configuration set. See `sending_options` Block for details.
  final pulumi.Input<ConfigurationSetSendingOptions>? sendingOptions;

  /// An object that contains information about the suppression list preferences for your account. See `suppression_options` Block for details.
  final pulumi.Input<ConfigurationSetSuppressionOptions>? suppressionOptions;

  /// A map of tags to assign to the service. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// An object that defines the open and click tracking options for emails that you send using the configuration set. See `tracking_options` Block for details.
  final pulumi.Input<ConfigurationSetTrackingOptions>? trackingOptions;

  /// An object that defines the VDM settings that apply to emails that you send using the configuration set. See `vdm_options` Block for details.
  final pulumi.Input<ConfigurationSetVdmOptions>? vdmOptions;

  /// Creates a new [ConfigurationSetArgs].
  /// [configurationSetName] The name of the configuration set.
  /// [deliveryOptions] An object that defines the dedicated IP pool that is used to send emails that you send using the configuration set. See `delivery_options` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [reputationOptions] An object that defines whether or not Amazon SES collects reputation metrics for the emails that you send that use the configuration set. See `reputation_options` Block for details.
  /// [sendingOptions] An object that defines whether or not Amazon SES can send email that you send using the configuration set. See `sending_options` Block for details.
  /// [suppressionOptions] An object that contains information about the suppression list preferences for your account. See `suppression_options` Block for details.
  /// [tags] A map of tags to assign to the service. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [trackingOptions] An object that defines the open and click tracking options for emails that you send using the configuration set. See `tracking_options` Block for details.
  /// [vdmOptions] An object that defines the VDM settings that apply to emails that you send using the configuration set. See `vdm_options` Block for details.
  ConfigurationSetArgs({
    required String configurationSetName,
    ConfigurationSetDeliveryOptions? deliveryOptions,
    String? region,
    ConfigurationSetReputationOptions? reputationOptions,
    ConfigurationSetSendingOptions? sendingOptions,
    ConfigurationSetSuppressionOptions? suppressionOptions,
    Map<String, String>? tags,
    ConfigurationSetTrackingOptions? trackingOptions,
    ConfigurationSetVdmOptions? vdmOptions,
  })  : configurationSetName =
            pulumi.Input.asInput<String>(configurationSetName),
        deliveryOptions =
            pulumi.Input.asOptionalInput<ConfigurationSetDeliveryOptions>(
                deliveryOptions),
        region = pulumi.Input.asOptionalInput<String>(region),
        reputationOptions =
            pulumi.Input.asOptionalInput<ConfigurationSetReputationOptions>(
                reputationOptions),
        sendingOptions =
            pulumi.Input.asOptionalInput<ConfigurationSetSendingOptions>(
                sendingOptions),
        suppressionOptions =
            pulumi.Input.asOptionalInput<ConfigurationSetSuppressionOptions>(
                suppressionOptions),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        trackingOptions =
            pulumi.Input.asOptionalInput<ConfigurationSetTrackingOptions>(
                trackingOptions),
        vdmOptions = pulumi.Input.asOptionalInput<ConfigurationSetVdmOptions>(
            vdmOptions);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configurationSetName'] = configurationSetName;
    final deliveryOptionsValue = deliveryOptions;
    if (deliveryOptionsValue != null) {
      map['deliveryOptions'] = pulumi.Input.mapOptionalInputValue<
          ConfigurationSetDeliveryOptions,
          Map<String, dynamic>>(deliveryOptionsValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final reputationOptionsValue = reputationOptions;
    if (reputationOptionsValue != null) {
      map['reputationOptions'] = pulumi.Input.mapOptionalInputValue<
              ConfigurationSetReputationOptions, Map<String, dynamic>>(
          reputationOptionsValue, (value) => value.toMap());
    }
    final sendingOptionsValue = sendingOptions;
    if (sendingOptionsValue != null) {
      map['sendingOptions'] = pulumi.Input.mapOptionalInputValue<
          ConfigurationSetSendingOptions,
          Map<String, dynamic>>(sendingOptionsValue, (value) => value.toMap());
    }
    final suppressionOptionsValue = suppressionOptions;
    if (suppressionOptionsValue != null) {
      map['suppressionOptions'] = pulumi.Input.mapOptionalInputValue<
              ConfigurationSetSuppressionOptions, Map<String, dynamic>>(
          suppressionOptionsValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final trackingOptionsValue = trackingOptions;
    if (trackingOptionsValue != null) {
      map['trackingOptions'] = pulumi.Input.mapOptionalInputValue<
          ConfigurationSetTrackingOptions,
          Map<String, dynamic>>(trackingOptionsValue, (value) => value.toMap());
    }
    final vdmOptionsValue = vdmOptions;
    if (vdmOptionsValue != null) {
      map['vdmOptions'] = pulumi.Input.mapOptionalInputValue<
          ConfigurationSetVdmOptions,
          Map<String, dynamic>>(vdmOptionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ConfigurationSetArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetArgs(
      configurationSetName: map['configurationSetName'] as String,
      deliveryOptions: map['deliveryOptions'] == null
          ? null
          : ConfigurationSetDeliveryOptions.fromMap(
              (map['deliveryOptions'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      reputationOptions: map['reputationOptions'] == null
          ? null
          : ConfigurationSetReputationOptions.fromMap(
              (map['reputationOptions'] as Map).cast<String, dynamic>()),
      sendingOptions: map['sendingOptions'] == null
          ? null
          : ConfigurationSetSendingOptions.fromMap(
              (map['sendingOptions'] as Map).cast<String, dynamic>()),
      suppressionOptions: map['suppressionOptions'] == null
          ? null
          : ConfigurationSetSuppressionOptions.fromMap(
              (map['suppressionOptions'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      trackingOptions: map['trackingOptions'] == null
          ? null
          : ConfigurationSetTrackingOptions.fromMap(
              (map['trackingOptions'] as Map).cast<String, dynamic>()),
      vdmOptions: map['vdmOptions'] == null
          ? null
          : ConfigurationSetVdmOptions.fromMap(
              (map['vdmOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
