// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_port_range.dart';
import 'port_mapping_app_protocol.dart';
import 'port_mapping_protocol.dart';

class AwsvpcPortMapping {
  /// The application protocol used by ECS Service Connect.
  final pulumi.Input<PortMappingAppProtocol?>? appProtocol;
  /// The port number exposed by the container.
  ///
  /// Do not set this property when `containerPortRange` is set.
  final pulumi.Input<double?>? containerPort;
  /// A range of container ports with inclusive `start` and `end` values.
  ///
  /// Do not set this property when `containerPort` is set. ECS maps the host port range to the same
  /// container port range.
  final pulumi.Input<ContainerPortRange?>? containerPortRange;
  /// The name used by ECS Service Connect and VPC Lattice.
  final pulumi.Input<String?>? name;
  /// The protocol used for the port mapping.
  ///
  /// Default - 'tcp'
  final pulumi.Input<PortMappingProtocol?>? protocol;

  /// Creates a new [AwsvpcPortMapping].
  /// [appProtocol] The application protocol used by ECS Service Connect.
  /// [containerPort] The port number exposed by the container.
  /// [containerPortRange] A range of container ports with inclusive `start` and `end` values.
  /// [name] The name used by ECS Service Connect and VPC Lattice.
  /// [protocol] The protocol used for the port mapping.
  const AwsvpcPortMapping({
    this.appProtocol,
    this.containerPort,
    this.containerPortRange,
    this.name,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appProtocol': ?pulumi.Input.mapOptionalInputValue<PortMappingAppProtocol, String>(appProtocol, (value) => value.wireValue),
      'containerPort': ?containerPort,
      'containerPortRange': ?pulumi.Input.mapOptionalInputValue<ContainerPortRange, Map<String, dynamic>>(containerPortRange, (value) => value.toMap()),
      'name': ?name,
      'protocol': ?pulumi.Input.mapOptionalInputValue<PortMappingProtocol, String>(protocol, (value) => value.wireValue),
    };
  }

  factory AwsvpcPortMapping.fromMap(Map<String, dynamic> map) {
    return AwsvpcPortMapping(
      appProtocol: (() { final guardedValue = map['appProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PortMappingAppProtocol.fromValue(guardedValue as String)); })(),
      containerPort: (() { final guardedValue = map['containerPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      containerPortRange: (() { final guardedValue = map['containerPortRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerPortRange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PortMappingProtocol.fromValue(guardedValue as String)); })(),
    );
  }
}
