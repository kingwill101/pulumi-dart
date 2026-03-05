// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduler_sku_response.dart';

/// Details of the Scheduler
class SchedulerPropertiesResponse {
  /// URL of the durable task scheduler
  final pulumi.Input<String> endpoint;
  /// IP allow list for durable task scheduler. Values can be IPv4, IPv6 or CIDR
  final pulumi.Input<List<String>> ipAllowlist;
  /// The status of the last operation
  final pulumi.Input<String> provisioningState;
  /// SKU of the durable task scheduler
  final pulumi.Input<SchedulerSkuResponse> sku;

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
      'sku': pulumi.Input.mapInputValue<SchedulerSkuResponse, Map<String, dynamic>>(sku, (value) => value.toMap()),
    };
  }

  factory SchedulerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SchedulerPropertiesResponse(
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      ipAllowlist: pulumi.Input.fromValue((map['ipAllowlist'] as List).cast<String>()),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      sku: pulumi.Input.fromValue(SchedulerSkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>())),
    );
  }
}

