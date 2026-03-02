// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Port Group properties.
class PortGroupProperties {
  /// The name of the port group.
  final pulumi.Input<String>? name;
  /// List of the ports that need to be matched.
  final pulumi.Input<List<String>>? ports;

  /// Creates a new [PortGroupProperties].
  /// [name] The name of the port group.
  /// [ports] List of the ports that need to be matched.
  PortGroupProperties({
    this.name,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'ports': ?ports,
    };
  }

  factory PortGroupProperties.fromMap(Map<String, dynamic> map) {
    return PortGroupProperties(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      ports: map['ports'] == null ? null : ((map['ports'] as List).cast<String>()).input(),
    );
  }
}

