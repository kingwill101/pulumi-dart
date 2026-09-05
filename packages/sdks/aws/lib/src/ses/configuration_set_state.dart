// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_set_delivery_options.dart';
import 'configuration_set_tracking_options.dart';

/// Input properties used for looking up and filtering ConfigurationSet resources.
class ConfigurationSetState {
  /// SES configuration set ARN.
  final pulumi.Input<String?>? arn;
  /// Whether messages that use the configuration set are required to use TLS. See below.
  final pulumi.Input<ConfigurationSetDeliveryOptions?>? deliveryOptions;
  /// Date and time at which the reputation metrics for the configuration set were last reset. Resetting these metrics is known as a fresh start.
  final pulumi.Input<String?>? lastFreshStart;
  /// Name of the configuration set.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Whether or not Amazon SES publishes reputation metrics for the configuration set, such as bounce and complaint rates, to Amazon CloudWatch. The default value is `false`.
  final pulumi.Input<bool?>? reputationMetricsEnabled;
  /// Whether email sending is enabled or disabled for the configuration set. The default value is `true`.
  final pulumi.Input<bool?>? sendingEnabled;
  /// Domain that is used to redirect email recipients to an Amazon SES-operated domain. See below. **NOTE:** This functionality is best effort.
  final pulumi.Input<ConfigurationSetTrackingOptions?>? trackingOptions;

  /// Creates a new [ConfigurationSetState].
  /// [arn] SES configuration set ARN.
  /// [deliveryOptions] Whether messages that use the configuration set are required to use TLS. See below.
  /// [lastFreshStart] Date and time at which the reputation metrics for the configuration set were last reset. Resetting these metrics is known as a fresh start.
  /// [name] Name of the configuration set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [reputationMetricsEnabled] Whether or not Amazon SES publishes reputation metrics for the configuration set, such as bounce and complaint rates, to Amazon CloudWatch. The default value is `false`.
  /// [sendingEnabled] Whether email sending is enabled or disabled for the configuration set. The default value is `true`.
  /// [trackingOptions] Domain that is used to redirect email recipients to an Amazon SES-operated domain. See below. **NOTE:** This functionality is best effort.
  const ConfigurationSetState({
    this.arn,
    this.deliveryOptions,
    this.lastFreshStart,
    this.name,
    this.region,
    this.reputationMetricsEnabled,
    this.sendingEnabled,
    this.trackingOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'deliveryOptions': ?pulumi.Input.mapOptionalInputValue<ConfigurationSetDeliveryOptions, Map<String, dynamic>>(deliveryOptions, (value) => value.toMap()),
      'lastFreshStart': ?lastFreshStart,
      'name': ?name,
      'region': ?region,
      'reputationMetricsEnabled': ?reputationMetricsEnabled,
      'sendingEnabled': ?sendingEnabled,
      'trackingOptions': ?pulumi.Input.mapOptionalInputValue<ConfigurationSetTrackingOptions, Map<String, dynamic>>(trackingOptions, (value) => value.toMap()),
    };
  }

  factory ConfigurationSetState.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deliveryOptions: (() { final guardedValue = map['deliveryOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationSetDeliveryOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastFreshStart: (() { final guardedValue = map['lastFreshStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reputationMetricsEnabled: (() { final guardedValue = map['reputationMetricsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sendingEnabled: (() { final guardedValue = map['sendingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      trackingOptions: (() { final guardedValue = map['trackingOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationSetTrackingOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
