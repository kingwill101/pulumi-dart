// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rules_slb_rule.dart';

/// Result data returned by getRules.
class GetRulesResult {
  final int frontendPort;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of SLB listener rules IDs.
  final List<String> ids;
  final String loadBalancerId;
  final String? nameRegex;

  /// A list of SLB listener rules names.
  final List<String> names;
  final String? outputFile;

  /// A list of SLB listener rules. Each element contains the following attributes:
  final List<GetRulesSlbRule> slbRules;

  /// Creates a new [GetRulesResult].
  /// [frontendPort] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of SLB listener rules IDs.
  /// [loadBalancerId] Required.
  /// [nameRegex] Optional.
  /// [names] A list of SLB listener rules names.
  /// [outputFile] Optional.
  /// [slbRules] A list of SLB listener rules. Each element contains the following attributes:
  GetRulesResult({
    required this.frontendPort,
    required this.id,
    required this.ids,
    required this.loadBalancerId,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.slbRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frontendPort': frontendPort,
      'id': id,
      'ids': ids,
      'loadBalancerId': loadBalancerId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'slbRules':
          pulumi.Input.encodeList<GetRulesSlbRule, Map<String, dynamic>>(
            slbRules,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetRulesResult.fromMap(Map<String, dynamic> map) {
    return GetRulesResult(
      frontendPort: map['frontendPort'] as int,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      loadBalancerId: map['loadBalancerId'] as String,
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      slbRules: pulumi.Input.decodeList<GetRulesSlbRule>(
        map['slbRules']!,
        (value) =>
            GetRulesSlbRule.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
