// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Discovered entity light summary.
class DiscoveredEntityLightSummaryResponse {
  /// Gets or sets the number of machines.
  final pulumi.Input<int> numberOfMachines;
  /// Gets or sets the number of servers.
  final pulumi.Input<int> numberOfServers;
  /// Gets or sets the number of web apps.
  final pulumi.Input<int> numberOfWebApps;

  /// Creates a new [DiscoveredEntityLightSummaryResponse].
  /// [numberOfMachines] Gets or sets the number of machines.
  /// [numberOfServers] Gets or sets the number of servers.
  /// [numberOfWebApps] Gets or sets the number of web apps.
  const DiscoveredEntityLightSummaryResponse({
    required this.numberOfMachines,
    required this.numberOfServers,
    required this.numberOfWebApps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numberOfMachines': numberOfMachines,
      'numberOfServers': numberOfServers,
      'numberOfWebApps': numberOfWebApps,
    };
  }

  factory DiscoveredEntityLightSummaryResponse.fromMap(Map<String, dynamic> map) {
    return DiscoveredEntityLightSummaryResponse(
      numberOfMachines: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['numberOfMachines'])),
      numberOfServers: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['numberOfServers'])),
      numberOfWebApps: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['numberOfWebApps'])),
    );
  }
}
