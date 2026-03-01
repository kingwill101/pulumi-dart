// ignore_for_file: unused_element, unnecessary_cast

import 'gcp_user_access_binding_scoped_access_setting_scope_client_scope_restricted_client_application.dart';

class GcpUserAccessBindingScopedAccessSettingScopeClientScope {
  /// Optional. The application that is subject to this binding's scope. Only one of clientId or name should be specified.
  /// Structure is documented below.
  final GcpUserAccessBindingScopedAccessSettingScopeClientScopeRestrictedClientApplication?
  restrictedClientApplication;

  /// Creates a new [GcpUserAccessBindingScopedAccessSettingScopeClientScope].
  /// [restrictedClientApplication] Optional. The application that is subject to this binding's scope. Only one of clientId or name should be specified.
  GcpUserAccessBindingScopedAccessSettingScopeClientScope({
    this.restrictedClientApplication,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'restrictedClientApplication': ?restrictedClientApplication == null
          ? null
          : restrictedClientApplication!.toMap(),
    };
  }

  factory GcpUserAccessBindingScopedAccessSettingScopeClientScope.fromMap(
    Map<String, dynamic> map,
  ) {
    return GcpUserAccessBindingScopedAccessSettingScopeClientScope(
      restrictedClientApplication: map['restrictedClientApplication'] == null
          ? null
          : GcpUserAccessBindingScopedAccessSettingScopeClientScopeRestrictedClientApplication.fromMap(
              (map['restrictedClientApplication'] as Map)
                  .cast<String, dynamic>(),
            ),
    );
  }
}
