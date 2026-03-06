// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Port condition that needs to be matched.
class PortCondition {
  /// Layer4 protocol type that needs to be matched.
  final pulumi.Input<String> layer4Protocol;
  /// List of the port Group Names that need to be matched.
  final pulumi.Input<List<String>>? portGroupNames;
  /// Port type that needs to be matched.
  final pulumi.Input<String>? portType;
  /// List of the Ports that need to be matched.
  final pulumi.Input<List<String>>? ports;

  /// Creates a new [PortCondition].
  /// [layer4Protocol] Layer4 protocol type that needs to be matched.
  /// [portGroupNames] List of the port Group Names that need to be matched.
  /// [portType] Port type that needs to be matched.
  /// [ports] List of the Ports that need to be matched.
  const PortCondition({
    required this.layer4Protocol,
    this.portGroupNames,
    this.portType,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'layer4Protocol': layer4Protocol,
      'portGroupNames': ?portGroupNames,
      'portType': ?portType,
      'ports': ?ports,
    };
  }

  factory PortCondition.fromMap(Map<String, dynamic> map) {
    return PortCondition(
      layer4Protocol: pulumi.Input.fromValue(map['layer4Protocol'] as String),
      portGroupNames: (() { final guardedValue = map['portGroupNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      portType: (() { final guardedValue = map['portType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

