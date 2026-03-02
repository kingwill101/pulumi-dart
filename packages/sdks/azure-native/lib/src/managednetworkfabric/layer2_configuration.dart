// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Common properties for Layer2 Configuration.
class Layer2Configuration {
  /// List of network device interfaces resource IDs.
  final pulumi.Input<List<String>>? interfaces;
  /// MTU of the packets between PE & CE.
  final pulumi.Input<int>? mtu;

  /// Creates a new [Layer2Configuration].
  /// [interfaces] List of network device interfaces resource IDs.
  /// [mtu] MTU of the packets between PE & CE.
  Layer2Configuration({
    this.interfaces,
    this.mtu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interfaces': ?interfaces,
      'mtu': ?mtu,
    };
  }

  factory Layer2Configuration.fromMap(Map<String, dynamic> map) {
    return Layer2Configuration(
      interfaces: map['interfaces'] == null ? null : ((map['interfaces'] as List).cast<String>()).input(),
      mtu: map['mtu'] == null ? null : (map['mtu'] as int).input(),
    );
  }
}

