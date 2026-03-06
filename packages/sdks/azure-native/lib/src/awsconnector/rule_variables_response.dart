// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipset_response.dart';
import 'port_set_response.dart';

/// Definition of RuleVariables
class RuleVariablesResponse {
  /// Property ipSets
  final pulumi.Input<Map<String, IPSetResponse>>? ipSets;
  /// Property portSets
  final pulumi.Input<Map<String, PortSetResponse>>? portSets;

  /// Creates a new [RuleVariablesResponse].
  /// [ipSets] Property ipSets
  /// [portSets] Property portSets
  const RuleVariablesResponse({
    this.ipSets,
    this.portSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipSets': ?pulumi.Input.mapOptionalInputValue<Map<String, IPSetResponse>, Map<String, Map<String, dynamic>>>(ipSets, (value) => pulumi.Input.encodeMapValues<IPSetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'portSets': ?pulumi.Input.mapOptionalInputValue<Map<String, PortSetResponse>, Map<String, Map<String, dynamic>>>(portSets, (value) => pulumi.Input.encodeMapValues<PortSetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleVariablesResponse.fromMap(Map<String, dynamic> map) {
    return RuleVariablesResponse(
      ipSets: (() { final guardedValue = map['ipSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<IPSetResponse>(guardedValue, (value) => IPSetResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      portSets: (() { final guardedValue = map['portSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<PortSetResponse>(guardedValue, (value) => PortSetResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

