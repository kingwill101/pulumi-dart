// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipset.dart';
import 'port_set.dart';

/// Definition of RuleVariables
class RuleVariables {
  /// Property ipSets
  final pulumi.Input<Map<String, IPSet>>? ipSets;
  /// Property portSets
  final pulumi.Input<Map<String, PortSet>>? portSets;

  /// Creates a new [RuleVariables].
  /// [ipSets] Property ipSets
  /// [portSets] Property portSets
  RuleVariables({
    this.ipSets,
    this.portSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipSets': ?pulumi.Input.mapOptionalInputValue<Map<String, IPSet>, Map<String, Map<String, dynamic>>>(ipSets, (value) => pulumi.Input.encodeMapValues<IPSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'portSets': ?pulumi.Input.mapOptionalInputValue<Map<String, PortSet>, Map<String, Map<String, dynamic>>>(portSets, (value) => pulumi.Input.encodeMapValues<PortSet, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleVariables.fromMap(Map<String, dynamic> map) {
    return RuleVariables(
      ipSets: (() { final guardedValue = map['ipSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<IPSet>(guardedValue, (value) => IPSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      portSets: (() { final guardedValue = map['portSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<PortSet>(guardedValue, (value) => PortSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

