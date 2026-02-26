// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_task_ui_module_config_module_id.dart';

/// Task author would use this type to configure a config module.
class EnterpriseCrmEventbusProtoTaskUiModuleConfig {
  /// ID of the config module.
  final EnterpriseCrmEventbusProtoTaskUiModuleConfigModuleId? moduleId;

  EnterpriseCrmEventbusProtoTaskUiModuleConfig({
    this.moduleId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final moduleIdValue = moduleId;
    if (moduleIdValue != null) {
      map['moduleId'] = moduleIdValue.value;
    }
    return map;
  }

  factory EnterpriseCrmEventbusProtoTaskUiModuleConfig.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoTaskUiModuleConfig(
      moduleId: map['moduleId'] == null
          ? null
          : EnterpriseCrmEventbusProtoTaskUiModuleConfigModuleId.fromValue(
              map['moduleId'] as String),
    );
  }
}
