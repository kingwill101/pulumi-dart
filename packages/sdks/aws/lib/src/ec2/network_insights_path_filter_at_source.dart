// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_path_filter_at_source_destination_port_range.dart';
import 'network_insights_path_filter_at_source_source_port_range.dart';

class NetworkInsightsPathFilterAtSource {
  /// The destination IPv4 address.
  final pulumi.Input<String>? destinationAddress;
  /// The destination port range. See below for details.
  final pulumi.Input<NetworkInsightsPathFilterAtSourceDestinationPortRange>? destinationPortRange;
  /// IP address of the source resource.
  final pulumi.Input<String>? sourceAddress;
  /// The source port range. See below for details.
  final pulumi.Input<NetworkInsightsPathFilterAtSourceSourcePortRange>? sourcePortRange;

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
      'destinationPortRange': ?pulumi.Input.mapOptionalInputValue<NetworkInsightsPathFilterAtSourceDestinationPortRange, Map<String, dynamic>>(destinationPortRange, (value) => value.toMap()),
      'sourceAddress': ?sourceAddress,
      'sourcePortRange': ?pulumi.Input.mapOptionalInputValue<NetworkInsightsPathFilterAtSourceSourcePortRange, Map<String, dynamic>>(sourcePortRange, (value) => value.toMap()),
    };
  }

  factory NetworkInsightsPathFilterAtSource.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsPathFilterAtSource(
      destinationAddress: map['destinationAddress'] == null ? null : ((map['destinationAddress'] as String).input()).input(),
      destinationPortRange: map['destinationPortRange'] == null ? null : ((NetworkInsightsPathFilterAtSourceDestinationPortRange.fromMap((map['destinationPortRange']! as Map).cast<String, dynamic>())).input()).input(),
      sourceAddress: map['sourceAddress'] == null ? null : ((map['sourceAddress'] as String).input()).input(),
      sourcePortRange: map['sourcePortRange'] == null ? null : ((NetworkInsightsPathFilterAtSourceSourcePortRange.fromMap((map['sourcePortRange']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

