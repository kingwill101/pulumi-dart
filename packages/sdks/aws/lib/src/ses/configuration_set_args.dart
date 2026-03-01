// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_set_delivery_options.dart';
import 'configuration_set_tracking_options.dart';

/// {@template pulumi_ses_configuration_set_configuration_set_args_doc}
/// The set of arguments for ConfigurationSet.
/// {@endtemplate}
/// {@macro pulumi_ses_configuration_set_configuration_set_args_doc}
class ConfigurationSetArgs {
  /// Whether messages that use the configuration set are required to use TLS. See below.
  final pulumi.Input<ConfigurationSetDeliveryOptions>? deliveryOptions;
  /// Name of the configuration set.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether or not Amazon SES publishes reputation metrics for the configuration set, such as bounce and complaint rates, to Amazon CloudWatch. The default value is `false`.
  final pulumi.Input<bool>? reputationMetricsEnabled;
  /// Whether email sending is enabled or disabled for the configuration set. The default value is `true`.
  final pulumi.Input<bool>? sendingEnabled;
  /// Domain that is used to redirect email recipients to an Amazon SES-operated domain. See below. **NOTE:** This functionality is best effort.
  final pulumi.Input<ConfigurationSetTrackingOptions>? trackingOptions;

  /// Creates a new [ConfigurationSetArgs].
  /// [deliveryOptions] Whether messages that use the configuration set are required to use TLS. See below.
  /// [name] Name of the configuration set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [reputationMetricsEnabled] Whether or not Amazon SES publishes reputation metrics for the configuration set, such as bounce and complaint rates, to Amazon CloudWatch. The default value is `false`.
  /// [sendingEnabled] Whether email sending is enabled or disabled for the configuration set. The default value is `true`.
  /// [trackingOptions] Domain that is used to redirect email recipients to an Amazon SES-operated domain. See below. **NOTE:** This functionality is best effort.
  ConfigurationSetArgs({
    pulumi.Output<ConfigurationSetDeliveryOptions>? deliveryOptions,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? reputationMetricsEnabled,
    pulumi.Output<bool>? sendingEnabled,
    pulumi.Output<ConfigurationSetTrackingOptions>? trackingOptions,
  }) :
      deliveryOptions = pulumi.Input.asOptionalInput<ConfigurationSetDeliveryOptions>(deliveryOptions),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      reputationMetricsEnabled = pulumi.Input.asOptionalInput<bool>(reputationMetricsEnabled),
      sendingEnabled = pulumi.Input.asOptionalInput<bool>(sendingEnabled),
      trackingOptions = pulumi.Input.asOptionalInput<ConfigurationSetTrackingOptions>(trackingOptions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryOptions': ?pulumi.Input.mapOptionalInputValue<ConfigurationSetDeliveryOptions, Map<String, dynamic>>(deliveryOptions, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'reputationMetricsEnabled': ?reputationMetricsEnabled,
      'sendingEnabled': ?sendingEnabled,
      'trackingOptions': ?pulumi.Input.mapOptionalInputValue<ConfigurationSetTrackingOptions, Map<String, dynamic>>(trackingOptions, (value) => value.toMap()),
    };
  }

  factory ConfigurationSetArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetArgs(
      deliveryOptions: map['deliveryOptions'] == null ? null : pulumi.Output.create<ConfigurationSetDeliveryOptions>(ConfigurationSetDeliveryOptions.fromMap((map['deliveryOptions'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      reputationMetricsEnabled: map['reputationMetricsEnabled'] == null ? null : pulumi.Output.create<bool>(map['reputationMetricsEnabled'] as bool),
      sendingEnabled: map['sendingEnabled'] == null ? null : pulumi.Output.create<bool>(map['sendingEnabled'] as bool),
      trackingOptions: map['trackingOptions'] == null ? null : pulumi.Output.create<ConfigurationSetTrackingOptions>(ConfigurationSetTrackingOptions.fromMap((map['trackingOptions'] as Map).cast<String, dynamic>())),
    );
  }
}

