// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the port condition that needs to be matched.
class AccessControlListPortCondition {
  /// List of protocol flags that need to be matched. Example: established | initial | &lt;List-of-TCP-flags&gt;. List of eligible TCP Flags are ack, fin, not-ack, not-fin, not-psh, not-rst, not-syn, not-urg, psh, rst, syn, urg
  final pulumi.Input<List<String>>? flags;

  /// Layer4 protocol type that needs to be matched.
  final pulumi.Input<String> layer4Protocol;

  /// List of the port Group Names that need to be matched.
  final pulumi.Input<List<String>>? portGroupNames;

  /// Port type that needs to be matched.
  final pulumi.Input<String>? portType;

  /// List of the Ports that need to be matched.
  final pulumi.Input<List<String>>? ports;

  /// Creates a new [AccessControlListPortCondition].
  /// [flags] List of protocol flags that need to be matched. Example: established | initial | &lt;List-of-TCP-flags&gt;. List of eligible TCP Flags are ack, fin, not-ack, not-fin, not-psh, not-rst, not-syn, not-urg, psh, rst, syn, urg
  /// [layer4Protocol] Layer4 protocol type that needs to be matched.
  /// [portGroupNames] List of the port Group Names that need to be matched.
  /// [portType] Port type that needs to be matched.
  /// [ports] List of the Ports that need to be matched.
  AccessControlListPortCondition({
    this.flags,
    required this.layer4Protocol,
    this.portGroupNames,
    this.portType,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flags': ?flags,
      'layer4Protocol': layer4Protocol,
      'portGroupNames': ?portGroupNames,
      'portType': ?portType,
      'ports': ?ports,
    };
  }

  factory AccessControlListPortCondition.fromMap(Map<String, dynamic> map) {
    return AccessControlListPortCondition(
      flags: (() {
        final guardedValue = map['flags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      layer4Protocol: pulumi.Input.fromValue(map['layer4Protocol'] as String),
      portGroupNames: (() {
        final guardedValue = map['portGroupNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      portType: (() {
        final guardedValue = map['portType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ports: (() {
        final guardedValue = map['ports'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
