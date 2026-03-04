// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// WebApplication port mapping.
class PortMapping {
  /// Gets or sets the External Port.
  final pulumi.Input<int>? externalPort;

  /// Gets or sets the Internal Port.
  final pulumi.Input<int>? internalPort;

  /// Creates a new [PortMapping].
  /// [externalPort] Gets or sets the External Port.
  /// [internalPort] Gets or sets the Internal Port.
  PortMapping({this.externalPort, this.internalPort});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalPort': ?externalPort,
      'internalPort': ?internalPort,
    };
  }

  factory PortMapping.fromMap(Map<String, dynamic> map) {
    return PortMapping(
      externalPort: (() {
        final guardedValue = map['externalPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      internalPort: (() {
        final guardedValue = map['internalPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
