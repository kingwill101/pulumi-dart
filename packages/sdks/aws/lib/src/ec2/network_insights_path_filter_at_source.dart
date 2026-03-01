// ignore_for_file: unused_element, unnecessary_cast

import 'network_insights_path_filter_at_source_destination_port_range.dart';
import 'network_insights_path_filter_at_source_source_port_range.dart';

class NetworkInsightsPathFilterAtSource {
  /// The destination IPv4 address.
  final String? destinationAddress;
  /// The destination port range. See below for details.
  final NetworkInsightsPathFilterAtSourceDestinationPortRange? destinationPortRange;
  /// IP address of the source resource.
  final String? sourceAddress;
  /// The source port range. See below for details.
  final NetworkInsightsPathFilterAtSourceSourcePortRange? sourcePortRange;

  /// Creates a new [NetworkInsightsPathFilterAtSource].
  /// [destinationAddress] The destination IPv4 address.
  /// [destinationPortRange] The destination port range. See below for details.
  /// [sourceAddress] IP address of the source resource.
  /// [sourcePortRange] The source port range. See below for details.
  NetworkInsightsPathFilterAtSource({
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

  factory NetworkInsightsPathFilterAtSource.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsPathFilterAtSource(
      destinationAddress: map['destinationAddress'] == null ? null : map['destinationAddress'] as String,
      destinationPortRange: map['destinationPortRange'] == null ? null : NetworkInsightsPathFilterAtSourceDestinationPortRange.fromMap((map['destinationPortRange'] as Map).cast<String, dynamic>()),
      sourceAddress: map['sourceAddress'] == null ? null : map['sourceAddress'] as String,
      sourcePortRange: map['sourcePortRange'] == null ? null : NetworkInsightsPathFilterAtSourceSourcePortRange.fromMap((map['sourcePortRange'] as Map).cast<String, dynamic>()),
    );
  }
}

