// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduler_sku.dart';

/// Details of the Scheduler
class SchedulerProperties {
  /// IP allow list for durable task scheduler. Values can be IPv4, IPv6 or CIDR
  final pulumi.Input<List<String>> ipAllowlist;
  /// SKU of the durable task scheduler
  final pulumi.Input<SchedulerSku> sku;

  /// Creates a new [SchedulerProperties].
  /// [ipAllowlist] IP allow list for durable task scheduler. Values can be IPv4, IPv6 or CIDR
  /// [sku] SKU of the durable task scheduler
  const SchedulerProperties({
    required this.ipAllowlist,
    required this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAllowlist': ipAllowlist,
      'sku': pulumi.Input.mapInputValue<SchedulerSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
    };
  }

  factory SchedulerProperties.fromMap(Map<String, dynamic> map) {
    return SchedulerProperties(
      ipAllowlist: pulumi.Input.fromValue((map['ipAllowlist'] as List).cast<String>()),
      sku: pulumi.Input.fromValue(SchedulerSku.fromMap((map['sku']! as Map).cast<String, dynamic>())),
    );
  }
}
