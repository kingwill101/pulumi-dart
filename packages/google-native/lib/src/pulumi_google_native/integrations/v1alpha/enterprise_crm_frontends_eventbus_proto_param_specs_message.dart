// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'enterprise_crm_frontends_eventbus_proto_param_spec_entry.dart';

class EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage {
  final List<EnterpriseCrmFrontendsEventbusProtoParamSpecEntry>? parameters;

  EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage({
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = Input.encodeList<
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
          : Input.decodeList<EnterpriseCrmFrontendsEventbusProtoParamSpecEntry>(
              map['parameters'],
              (value) =>
                  EnterpriseCrmFrontendsEventbusProtoParamSpecEntry.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
