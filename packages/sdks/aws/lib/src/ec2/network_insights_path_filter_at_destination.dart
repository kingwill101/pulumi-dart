// ignore_for_file: unused_element, unnecessary_cast

import 'network_insights_path_filter_at_destination_destination_port_range.dart';
import 'network_insights_path_filter_at_destination_source_port_range.dart';

class NetworkInsightsPathFilterAtDestination {
  /// The destination IPv4 address.
  final String? destinationAddress;
  /// The destination port range. See below for details.
  final NetworkInsightsPathFilterAtDestinationDestinationPortRange? destinationPortRange;
  /// IP address of the source resource.
  final String? sourceAddress;
  /// The source port range. See below for details.
  final NetworkInsightsPathFilterAtDestinationSourcePortRange? sourcePortRange;

  /// Creates a new [NetworkInsightsPathFilterAtDestination].
  /// [destinationAddress] The destination IPv4 address.
  /// [destinationPortRange] The destination port range. See below for details.
  /// [sourceAddress] IP address of the source resource.
  /// [sourcePortRange] The source port range. See below for details.
  NetworkInsightsPathFilterAtDestination({
    this.destinationAddress,
    this.destinationPortRange,
    this.sourceAddress,
    this.sourcePortRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationAddress': ?destinationAddress,
      'destinationPortRange': ?destinationPortRange == null ? null : destinationPortRange!.toMap(),
      'sourceAddress': ?sourceAddress,
      'sourcePortRange': ?sourcePortRange == null ? null : sourcePortRange!.toMap(),
    };
  }

  factory NetworkInsightsPathFilterAtDestination.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsPathFilterAtDestination(
      destinationAddress: map['destinationAddress'] == null ? null : map['destinationAddress'] as String,
      destinationPortRange: map['destinationPortRange'] == null ? null : NetworkInsightsPathFilterAtDestinationDestinationPortRange.fromMap((map['destinationPortRange'] as Map).cast<String, dynamic>()),
      sourceAddress: map['sourceAddress'] == null ? null : map['sourceAddress'] as String,
      sourcePortRange: map['sourcePortRange'] == null ? null : NetworkInsightsPathFilterAtDestinationSourcePortRange.fromMap((map['sourcePortRange'] as Map).cast<String, dynamic>()),
    );
  }
}

