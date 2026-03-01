// ignore_for_file: unused_element, unnecessary_cast

import 'three_tier_virtual_instance_three_tier_configuration_application_server_configuration_virtual_machine_configuration.dart';

class ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfiguration {
  /// The number of instances for the Application Server. Possible values are at least `1`. Changing this forces a new resource to be created.
  final int instanceCount;
  /// The resource ID of the Subnet for the Application Server. Changing this forces a new resource to be created.
  final String subnetId;
  /// A `virtual_machine_configuration` block as defined below. Changing this forces a new resource to be created.
  final ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfigurationVirtualMachineConfiguration virtualMachineConfiguration;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfiguration].
  /// [instanceCount] The number of instances for the Application Server. Possible values are at least `1`. Changing this forces a new resource to be created.
  /// [subnetId] The resource ID of the Subnet for the Application Server. Changing this forces a new resource to be created.
  /// [virtualMachineConfiguration] A `virtual_machine_configuration` block as defined below. Changing this forces a new resource to be created.
  ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfiguration({
    required this.instanceCount,
    required this.subnetId,
    required this.virtualMachineConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': instanceCount,
      'subnetId': subnetId,
      'virtualMachineConfiguration': virtualMachineConfiguration.toMap(),
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfiguration.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfiguration(
      instanceCount: map['instanceCount'] as int,
      subnetId: map['subnetId'] as String,
      virtualMachineConfiguration: ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfigurationVirtualMachineConfiguration.fromMap((map['virtualMachineConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

