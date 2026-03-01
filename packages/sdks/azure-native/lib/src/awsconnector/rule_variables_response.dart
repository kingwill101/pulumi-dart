// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipset_response.dart';
import 'port_set_response.dart';

/// Definition of RuleVariables
class RuleVariablesResponse {
  /// Property ipSets
  final Map<String, IPSetResponse>? ipSets;
  /// Property portSets
  final Map<String, PortSetResponse>? portSets;

  /// Creates a new [RuleVariablesResponse].
  /// [ipSets] Property ipSets
  /// [portSets] Property portSets
  RuleVariablesResponse({
    this.ipSets,
    this.portSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipSets': ?ipSets == null ? null : pulumi.Input.encodeMapValues<IPSetResponse, Map<String, dynamic>>(ipSets!, (value) => value.toMap()),
      'portSets': ?portSets == null ? null : pulumi.Input.encodeMapValues<PortSetResponse, Map<String, dynamic>>(portSets!, (value) => value.toMap()),
    };
  }

  factory RuleVariablesResponse.fromMap(Map<String, dynamic> map) {
    return RuleVariablesResponse(
      ipSets: map['ipSets'] == null ? null : pulumi.Input.decodeMapValues<IPSetResponse>(map['ipSets'], (value) => IPSetResponse.fromMap((value as Map).cast<String, dynamic>())),
      portSets: map['portSets'] == null ? null : pulumi.Input.decodeMapValues<PortSetResponse>(map['portSets'], (value) => PortSetResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

