// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_forwarding_rules_forwarding_rule.dart';

/// Result data returned by getForwardingRules.
class GetForwardingRulesResult {
  final String acceleratorId;
  /// A list of Ga Forwarding Rules. Each element contains the following attributes:
  final List<GetForwardingRulesForwardingRule> forwardingRules;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// The ID of the listener.
  final String listenerId;
  final String? outputFile;
  final String? status;

  /// Creates a new [GetForwardingRulesResult].
  /// [acceleratorId] Required.
  /// [forwardingRules] A list of Ga Forwarding Rules. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [listenerId] The ID of the listener.
  /// [outputFile] Optional.
  /// [status] Optional.
  GetForwardingRulesResult({
    required this.acceleratorId,
    required this.forwardingRules,
    required this.id,
    required this.ids,
    required this.listenerId,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'forwardingRules': pulumi.Input.encodeList<GetForwardingRulesForwardingRule, Map<String, dynamic>>(forwardingRules, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'listenerId': listenerId,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetForwardingRulesResult.fromMap(Map<String, dynamic> map) {
    return GetForwardingRulesResult(
      acceleratorId: map['acceleratorId'] as String,
      forwardingRules: pulumi.Input.decodeList<GetForwardingRulesForwardingRule>(map['forwardingRules']!, (value) => GetForwardingRulesForwardingRule.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      listenerId: map['listenerId'] as String,
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

