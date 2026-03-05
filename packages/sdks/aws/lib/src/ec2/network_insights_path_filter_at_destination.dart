// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_path_filter_at_destination_destination_port_range.dart';
import 'network_insights_path_filter_at_destination_source_port_range.dart';

class NetworkInsightsPathFilterAtDestination {
  /// The destination IPv4 address.
  final pulumi.Input<String>? destinationAddress;
  /// The destination port range. See below for details.
  final pulumi.Input<NetworkInsightsPathFilterAtDestinationDestinationPortRange>? destinationPortRange;
  /// IP address of the source resource.
  final pulumi.Input<String>? sourceAddress;
  /// The source port range. See below for details.
  final pulumi.Input<NetworkInsightsPathFilterAtDestinationSourcePortRange>? sourcePortRange;

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
      'destinationPortRange': ?pulumi.Input.mapOptionalInputValue<NetworkInsightsPathFilterAtDestinationDestinationPortRange, Map<String, dynamic>>(destinationPortRange, (value) => value.toMap()),
      'sourceAddress': ?sourceAddress,
      'sourcePortRange': ?pulumi.Input.mapOptionalInputValue<NetworkInsightsPathFilterAtDestinationSourcePortRange, Map<String, dynamic>>(sourcePortRange, (value) => value.toMap()),
    };
  }

  factory NetworkInsightsPathFilterAtDestination.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsPathFilterAtDestination(
      destinationAddress: (() { final guardedValue = map['destinationAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationPortRange: (() { final guardedValue = map['destinationPortRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInsightsPathFilterAtDestinationDestinationPortRange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceAddress: (() { final guardedValue = map['sourceAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourcePortRange: (() { final guardedValue = map['sourcePortRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInsightsPathFilterAtDestinationSourcePortRange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

