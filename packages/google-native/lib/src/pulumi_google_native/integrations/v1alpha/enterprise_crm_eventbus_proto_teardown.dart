// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'enterprise_crm_eventbus_proto_teardown_task_config.dart';

class EnterpriseCrmEventbusProtoTeardown {
  /// Required.
  final List<EnterpriseCrmEventbusProtoTeardownTaskConfig> teardownTaskConfigs;

  EnterpriseCrmEventbusProtoTeardown({
    required this.teardownTaskConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['teardownTaskConfigs'] = Input.encodeList<
        EnterpriseCrmEventbusProtoTeardownTaskConfig,
        Map<String, dynamic>>(teardownTaskConfigs, (value) => value.toMap());
    return map;
  }

  factory EnterpriseCrmEventbusProtoTeardown.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoTeardown(
      teardownTaskConfigs:
          Input.decodeList<EnterpriseCrmEventbusProtoTeardownTaskConfig>(
              map['teardownTaskConfigs'],
              (value) => EnterpriseCrmEventbusProtoTeardownTaskConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
