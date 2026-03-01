// ignore_for_file: unused_element, unnecessary_cast


/// Discovered entity light summary.
class DiscoveredEntityLightSummary {
  /// Gets or sets the number of machines.
  final int numberOfMachines;
  /// Gets or sets the number of servers.
  final int numberOfServers;
  /// Gets or sets the number of web apps.
  final int numberOfWebApps;

  /// Creates a new [DiscoveredEntityLightSummary].
  /// [numberOfMachines] Gets or sets the number of machines.
  /// [numberOfServers] Gets or sets the number of servers.
  /// [numberOfWebApps] Gets or sets the number of web apps.
  DiscoveredEntityLightSummary({
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

  factory DiscoveredEntityLightSummary.fromMap(Map<String, dynamic> map) {
    return DiscoveredEntityLightSummary(
      numberOfMachines: map['numberOfMachines'] as int,
      numberOfServers: map['numberOfServers'] as int,
      numberOfWebApps: map['numberOfWebApps'] as int,
    );
  }
}

