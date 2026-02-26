// ignore_for_file: unused_element, unnecessary_cast

import '../network_insights_path_filter_at_source_destination_port_range/network_insights_path_filter_at_source_destination_port_range.dart';
import '../network_insights_path_filter_at_source_source_port_range/network_insights_path_filter_at_source_source_port_range.dart';

class NetworkInsightsPathFilterAtSource {
  /// The destination IPv4 address.
  final String? destinationAddress;

  /// The destination port range. See below for details.
  final NetworkInsightsPathFilterAtSourceDestinationPortRange?
      destinationPortRange;

  /// IP address of the source resource.
  final String? sourceAddress;

  /// The source port range. See below for details.
  final NetworkInsightsPathFilterAtSourceSourcePortRange? sourcePortRange;

  NetworkInsightsPathFilterAtSource({
    this.destinationAddress,
    this.destinationPortRange,
    this.sourceAddress,
    this.sourcePortRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationAddressValue = destinationAddress;
    if (destinationAddressValue != null) {
      map['destinationAddress'] = destinationAddressValue;
    }
    final destinationPortRangeValue = destinationPortRange;
    if (destinationPortRangeValue != null) {
      map['destinationPortRange'] = destinationPortRangeValue.toMap();
    }
    final sourceAddressValue = sourceAddress;
    if (sourceAddressValue != null) {
      map['sourceAddress'] = sourceAddressValue;
    }
    final sourcePortRangeValue = sourcePortRange;
    if (sourcePortRangeValue != null) {
      map['sourcePortRange'] = sourcePortRangeValue.toMap();
    }
    return map;
  }

  factory NetworkInsightsPathFilterAtSource.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsPathFilterAtSource(
      destinationAddress: map['destinationAddress'] == null
          ? null
          : map['destinationAddress'] as String,
      destinationPortRange: map['destinationPortRange'] == null
          ? null
          : NetworkInsightsPathFilterAtSourceDestinationPortRange.fromMap(
              (map['destinationPortRange'] as Map).cast<String, dynamic>()),
      sourceAddress:
          map['sourceAddress'] == null ? null : map['sourceAddress'] as String,
      sourcePortRange: map['sourcePortRange'] == null
          ? null
          : NetworkInsightsPathFilterAtSourceSourcePortRange.fromMap(
              (map['sourcePortRange'] as Map).cast<String, dynamic>()),
    );
  }
}
