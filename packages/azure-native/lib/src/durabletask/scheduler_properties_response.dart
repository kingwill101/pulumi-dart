// ignore_for_file: unused_element, unnecessary_cast

import 'scheduler_sku_response.dart';

/// Details of the Scheduler
class SchedulerPropertiesResponse {
  /// URL of the durable task scheduler
  final String endpoint;
  /// IP allow list for durable task scheduler. Values can be IPv4, IPv6 or CIDR
  final List<String> ipAllowlist;
  /// The status of the last operation
  final String provisioningState;
  /// SKU of the durable task scheduler
  final SchedulerSkuResponse sku;

  /// Creates a new [SchedulerPropertiesResponse].
  /// [endpoint] URL of the durable task scheduler
  /// [ipAllowlist] IP allow list for durable task scheduler. Values can be IPv4, IPv6 or CIDR
  /// [provisioningState] The status of the last operation
  /// [sku] SKU of the durable task scheduler
  SchedulerPropertiesResponse({
    required this.endpoint,
    required this.ipAllowlist,
    required this.provisioningState,
    required this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'ipAllowlist': ipAllowlist,
      'provisioningState': provisioningState,
      'sku': sku.toMap(),
    };
  }

  factory SchedulerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SchedulerPropertiesResponse(
      endpoint: map['endpoint'] as String,
      ipAllowlist: (map['ipAllowlist'] as List).cast<String>(),
      provisioningState: map['provisioningState'] as String,
      sku: SchedulerSkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
    );
  }
}

