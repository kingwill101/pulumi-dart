// ignore_for_file: unused_element, unnecessary_cast

import 'gcp_user_access_binding_scoped_access_setting_scope_client_scope.dart';

class GcpUserAccessBindingScopedAccessSettingScope {
  /// Optional. Client scope for this access scope.
  /// Structure is documented below.
  final GcpUserAccessBindingScopedAccessSettingScopeClientScope? clientScope;

  /// Creates a new [GcpUserAccessBindingScopedAccessSettingScope].
  /// [clientScope] Optional. Client scope for this access scope.
  GcpUserAccessBindingScopedAccessSettingScope({this.clientScope});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientScope': ?clientScope == null ? null : clientScope!.toMap(),
    };
  }

  factory GcpUserAccessBindingScopedAccessSettingScope.fromMap(
    Map<String, dynamic> map,
  ) {
    return GcpUserAccessBindingScopedAccessSettingScope(
      clientScope: map['clientScope'] == null
          ? null
          : GcpUserAccessBindingScopedAccessSettingScopeClientScope.fromMap(
              (map['clientScope'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
