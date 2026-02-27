// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'enterprise_crm_eventbus_proto_condition.dart';

/// This message recursively combines constituent conditions using logical AND.
class EnterpriseCrmEventbusProtoCombinedCondition {
  /// A set of individual constituent conditions.
  final List<EnterpriseCrmEventbusProtoCondition>? conditions;

  EnterpriseCrmEventbusProtoCombinedCondition({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] = Input.encodeList<EnterpriseCrmEventbusProtoCondition,
          Map<String, dynamic>>(conditionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory EnterpriseCrmEventbusProtoCombinedCondition.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoCombinedCondition(
      conditions: map['conditions'] == null
          ? null
          : Input.decodeList<EnterpriseCrmEventbusProtoCondition>(
              map['conditions'],
              (value) => EnterpriseCrmEventbusProtoCondition.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
