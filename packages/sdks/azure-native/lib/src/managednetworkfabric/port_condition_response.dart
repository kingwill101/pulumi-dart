// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Port condition that needs to be matched.
class PortConditionResponse {
  /// Layer4 protocol type that needs to be matched.
  final pulumi.Input<String> layer4Protocol;
  /// List of the port Group Names that need to be matched.
  final pulumi.Input<List<String>>? portGroupNames;
  /// Port type that needs to be matched.
  final pulumi.Input<String>? portType;
  /// List of the Ports that need to be matched.
  final pulumi.Input<List<String>>? ports;

  /// Creates a new [PortConditionResponse].
  /// [layer4Protocol] Layer4 protocol type that needs to be matched.
  /// [portGroupNames] List of the port Group Names that need to be matched.
  /// [portType] Port type that needs to be matched.
  /// [ports] List of the Ports that need to be matched.
  PortConditionResponse({
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

  factory PortConditionResponse.fromMap(Map<String, dynamic> map) {
    return PortConditionResponse(
      layer4Protocol: (map['layer4Protocol'] as String).input(),
      portGroupNames: map['portGroupNames'] == null ? null : ((map['portGroupNames'] as List).cast<String>()).input(),
      portType: map['portType'] == null ? null : (map['portType'] as String).input(),
      ports: map['ports'] == null ? null : ((map['ports'] as List).cast<String>()).input(),
    );
  }
}

