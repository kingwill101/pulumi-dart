// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_advanced_threat_protection_args_doc}
/// Arguments for getAdvancedThreatProtection.
/// {@endtemplate}
/// {@macro pulumi_security_get_advanced_threat_protection_args_doc}
class GetAdvancedThreatProtectionArgs {
  /// The identifier of the resource.
  final pulumi.Input<String> resourceId;
  /// Advanced Threat Protection setting name.
  final pulumi.Input<String> settingName;

  /// Creates a new [GetAdvancedThreatProtectionArgs].
  /// [resourceId] The identifier of the resource.
  /// [settingName] Advanced Threat Protection setting name.
  GetAdvancedThreatProtectionArgs({
    required String resourceId,
    required String settingName,
  }) :
      resourceId = pulumi.Input.asInput<String>(resourceId),
      settingName = pulumi.Input.asInput<String>(settingName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': resourceId,
      'settingName': settingName,
    };
  }

  factory GetAdvancedThreatProtectionArgs.fromMap(Map<String, dynamic> map) {
    return GetAdvancedThreatProtectionArgs(
      resourceId: map['resourceId'] as String,
      settingName: map['settingName'] as String,
    );
  }
}

