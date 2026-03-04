// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipset_response.dart';

/// Definition of RuleVariables
class RuleVariablesModelResponse {
  /// Property ruleVariables
  final pulumi.Input<Map<String, IPSetResponse>>? ruleVariables;

  /// Creates a new [RuleVariablesModelResponse].
  /// [ruleVariables] Property ruleVariables
  RuleVariablesModelResponse({this.ruleVariables});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleVariables':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, IPSetResponse>,
            Map<String, Map<String, dynamic>>
          >(
            ruleVariables,
            (value) =>
                pulumi.Input.encodeMapValues<
                  IPSetResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory RuleVariablesModelResponse.fromMap(Map<String, dynamic> map) {
    return RuleVariablesModelResponse(
      ruleVariables: (() {
        final guardedValue = map['ruleVariables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<IPSetResponse>(
            guardedValue,
            (value) =>
                IPSetResponse.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
