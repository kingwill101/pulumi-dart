// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'enterprise_crm_eventbus_proto_task_ui_module_config.dart';

/// Task authors would use this type to configure the UI for a particular task by specifying what UI config modules should be included to compose the UI. Learn more about config module framework:
class EnterpriseCrmEventbusProtoTaskUiConfig {
  /// Configurations of included config modules.
  final List<EnterpriseCrmEventbusProtoTaskUiModuleConfig>? taskUiModuleConfigs;

  EnterpriseCrmEventbusProtoTaskUiConfig({
    this.taskUiModuleConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final taskUiModuleConfigsValue = taskUiModuleConfigs;
    if (taskUiModuleConfigsValue != null) {
      map['taskUiModuleConfigs'] = Input.encodeList<
              EnterpriseCrmEventbusProtoTaskUiModuleConfig,
              Map<String, dynamic>>(
          taskUiModuleConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory EnterpriseCrmEventbusProtoTaskUiConfig.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoTaskUiConfig(
      taskUiModuleConfigs: map['taskUiModuleConfigs'] == null
          ? null
          : Input.decodeList<EnterpriseCrmEventbusProtoTaskUiModuleConfig>(
              map['taskUiModuleConfigs'],
              (value) => EnterpriseCrmEventbusProtoTaskUiModuleConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
