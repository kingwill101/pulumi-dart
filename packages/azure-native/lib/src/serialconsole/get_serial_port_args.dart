// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_serialconsole_get_serial_port_args_doc}
/// Arguments for getSerialPort.
/// {@endtemplate}
/// {@macro pulumi_serialconsole_get_serial_port_args_doc}
class GetSerialPortArgs {
  /// The resource name, or subordinate path, for the parent of the serial port. For example: the name of the virtual machine.
  final pulumi.Input<String> parentResource;
  /// The resource type of the parent resource.  For example: 'virtualMachines' or 'virtualMachineScaleSets'
  final pulumi.Input<String> parentResourceType;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The namespace of the resource provider.
  final pulumi.Input<String> resourceProviderNamespace;
  /// The name of the serial port to connect to.
  final pulumi.Input<String> serialPort;

  /// Creates a new [GetSerialPortArgs].
  /// [parentResource] The resource name, or subordinate path, for the parent of the serial port. For example: the name of the virtual machine.
  /// [parentResourceType] The resource type of the parent resource.  For example: 'virtualMachines' or 'virtualMachineScaleSets'
  /// [resourceGroupName] The name of the resource group.
  /// [resourceProviderNamespace] The namespace of the resource provider.
  /// [serialPort] The name of the serial port to connect to.
  GetSerialPortArgs({
    required String parentResource,
    required String parentResourceType,
    required String resourceGroupName,
    required String resourceProviderNamespace,
    required String serialPort,
  }) :
      parentResource = pulumi.Input.asInput<String>(parentResource),
      parentResourceType = pulumi.Input.asInput<String>(parentResourceType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceProviderNamespace = pulumi.Input.asInput<String>(resourceProviderNamespace),
      serialPort = pulumi.Input.asInput<String>(serialPort);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parentResource': parentResource,
      'parentResourceType': parentResourceType,
      'resourceGroupName': resourceGroupName,
      'resourceProviderNamespace': resourceProviderNamespace,
      'serialPort': serialPort,
    };
  }

  factory GetSerialPortArgs.fromMap(Map<String, dynamic> map) {
    return GetSerialPortArgs(
      parentResource: map['parentResource'] as String,
      parentResourceType: map['parentResourceType'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceProviderNamespace: map['resourceProviderNamespace'] as String,
      serialPort: map['serialPort'] as String,
    );
  }
}

