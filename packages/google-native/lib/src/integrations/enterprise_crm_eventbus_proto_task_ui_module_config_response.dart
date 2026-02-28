// ignore_for_file: unused_element, unnecessary_cast

/// Task author would use this type to configure a config module.
class EnterpriseCrmEventbusProtoTaskUiModuleConfigResponse {
  /// ID of the config module.
  final String moduleId;

  /// Creates a new [EnterpriseCrmEventbusProtoTaskUiModuleConfigResponse].
  /// [moduleId] ID of the config module.
  EnterpriseCrmEventbusProtoTaskUiModuleConfigResponse({
    required this.moduleId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['moduleId'] = moduleId;
    return map;
  }

  factory EnterpriseCrmEventbusProtoTaskUiModuleConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoTaskUiModuleConfigResponse(
      moduleId: map['moduleId'] as String,
    );
  }
}
