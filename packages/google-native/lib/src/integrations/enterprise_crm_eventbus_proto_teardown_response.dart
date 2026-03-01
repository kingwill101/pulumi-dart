// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_teardown_task_config_response.dart';

class EnterpriseCrmEventbusProtoTeardownResponse {
  /// Required.
  final List<EnterpriseCrmEventbusProtoTeardownTaskConfigResponse>
  teardownTaskConfigs;

  /// Creates a new [EnterpriseCrmEventbusProtoTeardownResponse].
  /// [teardownTaskConfigs] Required.
  EnterpriseCrmEventbusProtoTeardownResponse({
    required this.teardownTaskConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'teardownTaskConfigs':
          pulumi.Input.encodeList<
            EnterpriseCrmEventbusProtoTeardownTaskConfigResponse,
            Map<String, dynamic>
          >(teardownTaskConfigs, (value) => value.toMap()),
    };
  }

  factory EnterpriseCrmEventbusProtoTeardownResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoTeardownResponse(
      teardownTaskConfigs:
          pulumi.Input.decodeList<
            EnterpriseCrmEventbusProtoTeardownTaskConfigResponse
          >(
            map['teardownTaskConfigs'],
            (value) =>
                EnterpriseCrmEventbusProtoTeardownTaskConfigResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
