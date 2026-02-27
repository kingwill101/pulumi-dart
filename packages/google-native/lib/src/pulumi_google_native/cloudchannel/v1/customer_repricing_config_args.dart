// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_channel_v1_repricing_config.dart';

/// The set of arguments for CustomerRepricingConfig.
class CustomerRepricingConfigArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> customerId;

  /// The configuration for bill modifications made by a reseller before sending it to customers.
  final pulumi.Input<GoogleCloudChannelV1RepricingConfig> repricingConfig;

  CustomerRepricingConfigArgs({
    required this.accountId,
    required this.customerId,
    required this.repricingConfig,
  });

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
      accountId: pulumi.Input.asInput<String>(map['accountId']),
      customerId: pulumi.Input.asInput<String>(map['customerId']),
      repricingConfig:
          pulumi.Input.asInput<GoogleCloudChannelV1RepricingConfig>(
              map['repricingConfig']),
    );
  }
}
