// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_task_ui_module_config_module_id.dart';

/// Task author would use this type to configure a config module.
class EnterpriseCrmEventbusProtoTaskUiModuleConfig {
  /// ID of the config module.
  final EnterpriseCrmEventbusProtoTaskUiModuleConfigModuleId? moduleId;

  /// Creates a new [EnterpriseCrmEventbusProtoTaskUiModuleConfig].
  /// [moduleId] ID of the config module.
  EnterpriseCrmEventbusProtoTaskUiModuleConfig({this.moduleId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'moduleId': ?moduleId == null ? null : moduleId!.value,
    };
  }

  factory EnterpriseCrmEventbusProtoTaskUiModuleConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoTaskUiModuleConfig(
      moduleId: map['moduleId'] == null
          ? null
          : EnterpriseCrmEventbusProtoTaskUiModuleConfigModuleId.fromValue(
              map['moduleId'] as String,
            ),
    );
  }
}
