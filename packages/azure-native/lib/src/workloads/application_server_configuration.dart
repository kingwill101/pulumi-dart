// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_configuration.dart';

/// Gets or sets the application server configuration.
class ApplicationServerConfiguration {
  /// The number of app server instances.
  final double instanceCount;
  /// The subnet id.
  final String subnetId;
  /// Gets or sets the virtual machine configuration.
  final VirtualMachineConfiguration virtualMachineConfiguration;

  /// Creates a new [ApplicationServerConfiguration].
  /// [instanceCount] The number of app server instances.
  /// [subnetId] The subnet id.
  /// [virtualMachineConfiguration] Gets or sets the virtual machine configuration.
  ApplicationServerConfiguration({
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

  factory ApplicationServerConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationServerConfiguration(
      instanceCount: map['instanceCount'] as double,
      subnetId: map['subnetId'] as String,
      virtualMachineConfiguration: VirtualMachineConfiguration.fromMap((map['virtualMachineConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

