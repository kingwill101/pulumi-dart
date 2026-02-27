// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../configuration_set_delivery_options/configuration_set_delivery_options.dart';
import '../configuration_set_tracking_options/configuration_set_tracking_options.dart';

/// The set of arguments for ConfigurationSet.
class ConfigurationSetArgs {
  /// Whether messages that use the configuration set are required to use TLS. See below.
  final Input<ConfigurationSetDeliveryOptions>? deliveryOptions;

  /// Name of the configuration set.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Whether or not Amazon SES publishes reputation metrics for the configuration set, such as bounce and complaint rates, to Amazon CloudWatch. The default value is `false`.
  final Input<bool>? reputationMetricsEnabled;

  /// Whether email sending is enabled or disabled for the configuration set. The default value is `true`.
  final Input<bool>? sendingEnabled;

  /// Domain that is used to redirect email recipients to an Amazon SES-operated domain. See below. **NOTE:** This functionality is best effort.
  final Input<ConfigurationSetTrackingOptions>? trackingOptions;

  ConfigurationSetArgs({
    this.deliveryOptions,
    this.name,
    this.region,
    this.reputationMetricsEnabled,
    this.sendingEnabled,
    this.trackingOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deliveryOptionsValue = deliveryOptions;
    if (deliveryOptionsValue != null) {
      map['deliveryOptions'] = Input.mapOptionalInputValue<
          ConfigurationSetDeliveryOptions,
          Map<String, dynamic>>(deliveryOptionsValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final reputationMetricsEnabledValue = reputationMetricsEnabled;
    if (reputationMetricsEnabledValue != null) {
      map['reputationMetricsEnabled'] = reputationMetricsEnabledValue;
    }
    final sendingEnabledValue = sendingEnabled;
    if (sendingEnabledValue != null) {
      map['sendingEnabled'] = sendingEnabledValue;
    }
    final trackingOptionsValue = trackingOptions;
    if (trackingOptionsValue != null) {
      map['trackingOptions'] = Input.mapOptionalInputValue<
          ConfigurationSetTrackingOptions,
          Map<String, dynamic>>(trackingOptionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ConfigurationSetArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetArgs(
      deliveryOptions: Input.asOptionalInput<ConfigurationSetDeliveryOptions>(
          map['deliveryOptions']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      reputationMetricsEnabled:
          Input.asOptionalInput<bool>(map['reputationMetricsEnabled']),
      sendingEnabled: Input.asOptionalInput<bool>(map['sendingEnabled']),
      trackingOptions: Input.asOptionalInput<ConfigurationSetTrackingOptions>(
          map['trackingOptions']),
    );
  }
}
