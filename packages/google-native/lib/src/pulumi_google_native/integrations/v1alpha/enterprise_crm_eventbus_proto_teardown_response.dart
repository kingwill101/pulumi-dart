// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'enterprise_crm_eventbus_proto_teardown_task_config_response.dart';

class EnterpriseCrmEventbusProtoTeardownResponse {
  /// Required.
  final List<EnterpriseCrmEventbusProtoTeardownTaskConfigResponse>
      teardownTaskConfigs;

  EnterpriseCrmEventbusProtoTeardownResponse({
    required this.teardownTaskConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['teardownTaskConfigs'] = Input.encodeList<
        EnterpriseCrmEventbusProtoTeardownTaskConfigResponse,
        Map<String, dynamic>>(teardownTaskConfigs, (value) => value.toMap());
    return map;
  }

  factory EnterpriseCrmEventbusProtoTeardownResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoTeardownResponse(
      teardownTaskConfigs: Input.decodeList<
              EnterpriseCrmEventbusProtoTeardownTaskConfigResponse>(
          map['teardownTaskConfigs'],
          (value) =>
              EnterpriseCrmEventbusProtoTeardownTaskConfigResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
