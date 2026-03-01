// ignore_for_file: unused_element, unnecessary_cast


/// Port condition that needs to be matched.
class PortCondition {
  /// Layer4 protocol type that needs to be matched.
  final String layer4Protocol;
  /// List of the port Group Names that need to be matched.
  final List<String>? portGroupNames;
  /// Port type that needs to be matched.
  final String? portType;
  /// List of the Ports that need to be matched.
  final List<String>? ports;

  /// Creates a new [PortCondition].
  /// [layer4Protocol] Layer4 protocol type that needs to be matched.
  /// [portGroupNames] List of the port Group Names that need to be matched.
  /// [portType] Port type that needs to be matched.
  /// [ports] List of the Ports that need to be matched.
  PortCondition({
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
      layer4Protocol: map['layer4Protocol'] as String,
      portGroupNames: map['portGroupNames'] == null ? null : (map['portGroupNames'] as List).cast<String>(),
      portType: map['portType'] == null ? null : map['portType'] as String,
      ports: map['ports'] == null ? null : (map['ports'] as List).cast<String>(),
    );
  }
}

