// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Port Group properties.
class PortGroupPropertiesResponse {
  /// The name of the port group.
  final pulumi.Input<String>? name;
  /// List of the ports that need to be matched.
  final pulumi.Input<List<String>>? ports;

  /// Creates a new [PortGroupPropertiesResponse].
  /// [name] The name of the port group.
  /// [ports] List of the ports that need to be matched.
  const PortGroupPropertiesResponse({
    this.name,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'ports': ?ports,
    };
  }

  factory PortGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PortGroupPropertiesResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

