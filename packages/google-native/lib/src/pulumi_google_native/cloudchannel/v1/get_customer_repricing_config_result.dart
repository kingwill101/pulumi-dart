// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_channel_v1_repricing_config_response.dart';

/// Result data returned by getCustomerRepricingConfig.
class GetCustomerRepricingConfigResult {
  /// Resource name of the CustomerRepricingConfig. Format: accounts/{account_id}/customers/{customer_id}/customerRepricingConfigs/{id}.
  final String name;

  /// The configuration for bill modifications made by a reseller before sending it to customers.
  final GoogleCloudChannelV1RepricingConfigResponse repricingConfig;

  /// Timestamp of an update to the repricing rule. If `update_time` is after RepricingConfig.effective_invoice_month then it indicates this was set mid-month.
  final String updateTime;

  GetCustomerRepricingConfigResult({
    required this.name,
    required this.repricingConfig,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['repricingConfig'] = repricingConfig.toMap();
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetCustomerRepricingConfigResult.fromMap(Map<String, dynamic> map) {
    return GetCustomerRepricingConfigResult(
      name: map['name'] as String,
      repricingConfig: GoogleCloudChannelV1RepricingConfigResponse.fromMap(
          (map['repricingConfig'] as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
    );
  }
}
