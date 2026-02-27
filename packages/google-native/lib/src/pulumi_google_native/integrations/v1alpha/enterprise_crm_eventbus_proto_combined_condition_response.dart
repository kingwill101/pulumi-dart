// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_condition_response.dart';

/// This message recursively combines constituent conditions using logical AND.
class EnterpriseCrmEventbusProtoCombinedConditionResponse {
  /// A set of individual constituent conditions.
  final List<EnterpriseCrmEventbusProtoConditionResponse> conditions;

  EnterpriseCrmEventbusProtoCombinedConditionResponse({
    required this.conditions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conditions'] = pulumi.Input.encodeList<
        EnterpriseCrmEventbusProtoConditionResponse,
        Map<String, dynamic>>(conditions, (value) => value.toMap());
    return map;
  }

  factory EnterpriseCrmEventbusProtoCombinedConditionResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoCombinedConditionResponse(
      conditions:
          pulumi.Input.decodeList<EnterpriseCrmEventbusProtoConditionResponse>(
              map['conditions'],
              (value) => EnterpriseCrmEventbusProtoConditionResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
