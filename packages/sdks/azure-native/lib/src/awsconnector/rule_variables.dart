// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipset.dart';
import 'port_set.dart';

/// Definition of RuleVariables
class RuleVariables {
  /// Property ipSets
  final Map<String, IPSet>? ipSets;
  /// Property portSets
  final Map<String, PortSet>? portSets;

  /// Creates a new [RuleVariables].
  /// [ipSets] Property ipSets
  /// [portSets] Property portSets
  RuleVariables({
    this.ipSets,
    this.portSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipSets': ?ipSets == null ? null : pulumi.Input.encodeMapValues<IPSet, Map<String, dynamic>>(ipSets!, (value) => value.toMap()),
      'portSets': ?portSets == null ? null : pulumi.Input.encodeMapValues<PortSet, Map<String, dynamic>>(portSets!, (value) => value.toMap()),
    };
  }

  factory RuleVariables.fromMap(Map<String, dynamic> map) {
    return RuleVariables(
      ipSets: map['ipSets'] == null ? null : pulumi.Input.decodeMapValues<IPSet>(map['ipSets'], (value) => IPSet.fromMap((value as Map).cast<String, dynamic>())),
      portSets: map['portSets'] == null ? null : pulumi.Input.decodeMapValues<PortSet>(map['portSets'], (value) => PortSet.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

