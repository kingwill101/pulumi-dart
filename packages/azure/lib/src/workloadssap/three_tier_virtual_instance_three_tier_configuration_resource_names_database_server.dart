// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'three_tier_virtual_instance_three_tier_configuration_resource_names_database_server_load_balancer.dart';
import 'three_tier_virtual_instance_three_tier_configuration_resource_names_database_server_virtual_machine.dart';

class ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServer {
  /// The full name for the availability set. Changing this forces a new resource to be created.
  final String? availabilitySetName;
  /// A `load_balancer` block as defined below. Changing this forces a new resource to be created.
  final ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerLoadBalancer? loadBalancer;
  /// One or more `virtual_machine` blocks as defined below. Changing this forces a new resource to be created.
  final List<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachine>? virtualMachines;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServer].
  /// [availabilitySetName] The full name for the availability set. Changing this forces a new resource to be created.
  /// [loadBalancer] A `load_balancer` block as defined below. Changing this forces a new resource to be created.
  /// [virtualMachines] One or more `virtual_machine` blocks as defined below. Changing this forces a new resource to be created.
  ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServer({
    this.availabilitySetName,
    this.loadBalancer,
    this.virtualMachines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilitySetName': ?availabilitySetName,
      'loadBalancer': ?loadBalancer == null ? null : loadBalancer!.toMap(),
      'virtualMachines': ?virtualMachines == null ? null : pulumi.Input.encodeList<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachine, Map<String, dynamic>>(virtualMachines!, (value) => value.toMap()),
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServer.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServer(
      availabilitySetName: map['availabilitySetName'] == null ? null : map['availabilitySetName'] as String,
      loadBalancer: map['loadBalancer'] == null ? null : ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerLoadBalancer.fromMap((map['loadBalancer'] as Map).cast<String, dynamic>()),
      virtualMachines: map['virtualMachines'] == null ? null : pulumi.Input.decodeList<ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachine>(map['virtualMachines'], (value) => ThreeTierVirtualInstanceThreeTierConfigurationResourceNamesDatabaseServerVirtualMachine.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

