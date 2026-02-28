// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_frontends_eventbus_proto_param_spec_entry.dart';

class EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage {
  final List<EnterpriseCrmFrontendsEventbusProtoParamSpecEntry>? parameters;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage].
  /// [parameters] Optional.
  EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage({
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = pulumi.Input.encodeList<
          EnterpriseCrmFrontendsEventbusProtoParamSpecEntry,
          Map<String, dynamic>>(parametersValue, (value) => value.toMap());
    }
    return map;
  }

  factory EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage(
      parameters: map['parameters'] == null
          ? null
          : pulumi.Input.decodeList<
                  EnterpriseCrmFrontendsEventbusProtoParamSpecEntry>(
              map['parameters'],
              (value) =>
                  EnterpriseCrmFrontendsEventbusProtoParamSpecEntry.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
