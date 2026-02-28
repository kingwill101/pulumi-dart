// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_channel_v1_repricing_config.dart';

/// {@template pulumi_cloudchannel_v1_customer_repricing_config_args_doc}
/// The set of arguments for CustomerRepricingConfig.
/// {@endtemplate}
/// {@macro pulumi_cloudchannel_v1_customer_repricing_config_args_doc}
class CustomerRepricingConfigArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> customerId;

  /// The configuration for bill modifications made by a reseller before sending it to customers.
  final pulumi.Input<GoogleCloudChannelV1RepricingConfig> repricingConfig;

  /// Creates a new [CustomerRepricingConfigArgs].
  /// [accountId] Required.
  /// [customerId] Required.
  /// [repricingConfig] The configuration for bill modifications made by a reseller before sending it to customers.
  CustomerRepricingConfigArgs({
    required String accountId,
    required String customerId,
    required GoogleCloudChannelV1RepricingConfig repricingConfig,
  })  : accountId = pulumi.Input.asInput<String>(accountId),
        customerId = pulumi.Input.asInput<String>(customerId),
        repricingConfig =
            pulumi.Input.asInput<GoogleCloudChannelV1RepricingConfig>(
                repricingConfig);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    map['customerId'] = customerId;
    map['repricingConfig'] = pulumi.Input.mapInputValue<
        GoogleCloudChannelV1RepricingConfig,
        Map<String, dynamic>>(repricingConfig, (value) => value.toMap());
    return map;
  }

  factory CustomerRepricingConfigArgs.fromMap(Map<String, dynamic> map) {
    return CustomerRepricingConfigArgs(
      accountId: map['accountId'] as String,
      customerId: map['customerId'] as String,
      repricingConfig: GoogleCloudChannelV1RepricingConfig.fromMap(
          (map['repricingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
