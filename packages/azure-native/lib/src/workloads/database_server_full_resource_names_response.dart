// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_resource_names_response.dart';
import 'virtual_machine_resource_names_response.dart';

/// The full resource names object for database layer resources. The number of entries in this list should be equal to the number VMs to be created for database layer.
class DatabaseServerFullResourceNamesResponse {
  /// The full name for availability set. In case name is not provided, it will be defaulted to {SID}-DB-AvSet.
  final String? availabilitySetName;
  /// The resource names object for load balancer and related resources.
  final LoadBalancerResourceNamesResponse? loadBalancer;
  /// The list of virtual machine naming details.
  final List<VirtualMachineResourceNamesResponse>? virtualMachines;

  /// Creates a new [DatabaseServerFullResourceNamesResponse].
  /// [availabilitySetName] The full name for availability set. In case name is not provided, it will be defaulted to {SID}-DB-AvSet.
  /// [loadBalancer] The resource names object for load balancer and related resources.
  /// [virtualMachines] The list of virtual machine naming details.
  DatabaseServerFullResourceNamesResponse({
    this.availabilitySetName,
    this.loadBalancer,
    this.virtualMachines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilitySetName': ?availabilitySetName,
      'loadBalancer': ?loadBalancer == null ? null : loadBalancer!.toMap(),
      'virtualMachines': ?virtualMachines == null ? null : pulumi.Input.encodeList<VirtualMachineResourceNamesResponse, Map<String, dynamic>>(virtualMachines!, (value) => value.toMap()),
    };
  }

  factory DatabaseServerFullResourceNamesResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseServerFullResourceNamesResponse(
      availabilitySetName: map['availabilitySetName'] == null ? null : map['availabilitySetName'] as String,
      loadBalancer: map['loadBalancer'] == null ? null : LoadBalancerResourceNamesResponse.fromMap((map['loadBalancer'] as Map).cast<String, dynamic>()),
      virtualMachines: map['virtualMachines'] == null ? null : pulumi.Input.decodeList<VirtualMachineResourceNamesResponse>(map['virtualMachines'], (value) => VirtualMachineResourceNamesResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

