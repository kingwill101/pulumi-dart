// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../gcp_user_access_binding_scoped_access_setting/gcp_user_access_binding_scoped_access_setting.dart';
import '../gcp_user_access_binding_session_settings/gcp_user_access_binding_session_settings.dart';

/// The set of arguments for GcpUserAccessBinding.
class GcpUserAccessBindingArgs {
  /// Optional. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  final Input<String>? accessLevels;

  /// Required. Immutable. Google Group id whose members are subject to this binding's restrictions. See "id" in the G Suite Directory API's Groups resource. If a group's email address/alias is changed, this resource will continue to point at the changed group. This field does not accept group email addresses or aliases. Example: "01d520gv4vjcrht"
  final Input<String> groupKey;

  /// Required. ID of the parent organization.
  final Input<String> organizationId;

  /// Optional. A list of scoped access settings that set this binding's restrictions on a subset of applications.
  /// Structure is documented below.
  final Input<List<GcpUserAccessBindingScopedAccessSetting>>?
      scopedAccessSettings;

  /// Optional. The Google Cloud session length (GCSL) policy for the group key.
  /// Structure is documented below.
  final Input<GcpUserAccessBindingSessionSettings>? sessionSettings;

  GcpUserAccessBindingArgs({
    this.accessLevels,
    required this.groupKey,
    required this.organizationId,
    this.scopedAccessSettings,
    this.sessionSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessLevelsValue = accessLevels;
    if (accessLevelsValue != null) {
      map['accessLevels'] = accessLevelsValue;
    }
    map['groupKey'] = groupKey;
    map['organizationId'] = organizationId;
    final scopedAccessSettingsValue = scopedAccessSettings;
    if (scopedAccessSettingsValue != null) {
      map['scopedAccessSettings'] = Input.mapOptionalInputValue<
              List<GcpUserAccessBindingScopedAccessSetting>,
              List<Map<String, dynamic>>>(
          scopedAccessSettingsValue,
          (value) => Input.encodeList<GcpUserAccessBindingScopedAccessSetting,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final sessionSettingsValue = sessionSettings;
    if (sessionSettingsValue != null) {
      map['sessionSettings'] = Input.mapOptionalInputValue<
          GcpUserAccessBindingSessionSettings,
          Map<String, dynamic>>(sessionSettingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GcpUserAccessBindingArgs.fromMap(Map<String, dynamic> map) {
    return GcpUserAccessBindingArgs(
      accessLevels: Input.asOptionalInput<String>(map['accessLevels']),
      groupKey: Input.asInput<String>(map['groupKey']),
      organizationId: Input.asInput<String>(map['organizationId']),
      scopedAccessSettings:
          Input.asOptionalInput<List<GcpUserAccessBindingScopedAccessSetting>>(
              map['scopedAccessSettings']),
      sessionSettings:
          Input.asOptionalInput<GcpUserAccessBindingSessionSettings>(
              map['sessionSettings']),
    );
  }
}
