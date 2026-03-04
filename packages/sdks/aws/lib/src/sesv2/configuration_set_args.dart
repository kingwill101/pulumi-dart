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
    required this.configurationSetName,
    this.deliveryOptions,
    this.region,
    this.reputationOptions,
    this.sendingOptions,
    this.suppressionOptions,
    this.tags,
    this.trackingOptions,
    this.vdmOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationSetName': configurationSetName,
      'deliveryOptions':
          ?pulumi.Input.mapOptionalInputValue<
            ConfigurationSetDeliveryOptions,
            Map<String, dynamic>
          >(deliveryOptions, (value) => value.toMap()),
      'region': ?region,
      'reputationOptions':
          ?pulumi.Input.mapOptionalInputValue<
            ConfigurationSetReputationOptions,
            Map<String, dynamic>
          >(reputationOptions, (value) => value.toMap()),
      'sendingOptions':
          ?pulumi.Input.mapOptionalInputValue<
            ConfigurationSetSendingOptions,
            Map<String, dynamic>
          >(sendingOptions, (value) => value.toMap()),
      'suppressionOptions':
          ?pulumi.Input.mapOptionalInputValue<
            ConfigurationSetSuppressionOptions,
            Map<String, dynamic>
          >(suppressionOptions, (value) => value.toMap()),
      'tags': ?tags,
      'trackingOptions':
          ?pulumi.Input.mapOptionalInputValue<
            ConfigurationSetTrackingOptions,
            Map<String, dynamic>
          >(trackingOptions, (value) => value.toMap()),
      'vdmOptions':
          ?pulumi.Input.mapOptionalInputValue<
            ConfigurationSetVdmOptions,
            Map<String, dynamic>
          >(vdmOptions, (value) => value.toMap()),
    };
  }

  factory ConfigurationSetArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetArgs(
      configurationSetName: pulumi.Input.fromValue(
        map['configurationSetName'] as String,
      ),
      deliveryOptions: (() {
        final guardedValue = map['deliveryOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConfigurationSetDeliveryOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reputationOptions: (() {
        final guardedValue = map['reputationOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConfigurationSetReputationOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sendingOptions: (() {
        final guardedValue = map['sendingOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConfigurationSetSendingOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      suppressionOptions: (() {
        final guardedValue = map['suppressionOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConfigurationSetSuppressionOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      trackingOptions: (() {
        final guardedValue = map['trackingOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConfigurationSetTrackingOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vdmOptions: (() {
        final guardedValue = map['vdmOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConfigurationSetVdmOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
