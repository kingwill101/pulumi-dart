// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_teardown_task_config.dart';

class EnterpriseCrmEventbusProtoTeardown {
  /// Required.
  final List<EnterpriseCrmEventbusProtoTeardownTaskConfig> teardownTaskConfigs;

  /// Creates a new [EnterpriseCrmEventbusProtoTeardown].
  /// [teardownTaskConfigs] Required.
  EnterpriseCrmEventbusProtoTeardown({required this.teardownTaskConfigs});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'teardownTaskConfigs':
          pulumi.Input.encodeList<
            EnterpriseCrmEventbusProtoTeardownTaskConfig,
            Map<String, dynamic>
          >(teardownTaskConfigs, (value) => value.toMap()),
    };
  }

  factory EnterpriseCrmEventbusProtoTeardown.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoTeardown(
      teardownTaskConfigs:
          pulumi.Input.decodeList<EnterpriseCrmEventbusProtoTeardownTaskConfig>(
            map['teardownTaskConfigs'],
            (value) => EnterpriseCrmEventbusProtoTeardownTaskConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
