// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../tenant_client/tenant_client.dart';

/// The set of arguments for Tenant.
class TenantArgs {
  /// Whether to allow email/password user authentication.
  final Input<bool>? allowPasswordSignup;

  /// Options related to how clients making requests on behalf of a tenant should be configured.
  /// Structure is documented below.
  final Input<TenantClient>? client;

  /// Whether authentication is disabled for the tenant. If true, the users under
  /// the disabled tenant are not allowed to sign-in. Admins of the disabled tenant
  /// are not able to manage its users.
  final Input<bool>? disableAuth;

  /// Human friendly display name of the tenant.
  final Input<String> displayName;

  /// Whether to enable email link user authentication.
  final Input<bool>? enableEmailLinkSignin;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  TenantArgs({
    this.allowPasswordSignup,
    this.client,
    this.disableAuth,
    required this.displayName,
    this.enableEmailLinkSignin,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowPasswordSignupValue = allowPasswordSignup;
    if (allowPasswordSignupValue != null) {
      map['allowPasswordSignup'] = allowPasswordSignupValue;
    }
    final clientValue = client;
    if (clientValue != null) {
      map['client'] =
          Input.mapOptionalInputValue<TenantClient, Map<String, dynamic>>(
              clientValue, (value) => value.toMap());
    }
    final disableAuthValue = disableAuth;
    if (disableAuthValue != null) {
      map['disableAuth'] = disableAuthValue;
    }
    map['displayName'] = displayName;
    final enableEmailLinkSigninValue = enableEmailLinkSignin;
    if (enableEmailLinkSigninValue != null) {
      map['enableEmailLinkSignin'] = enableEmailLinkSigninValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory TenantArgs.fromMap(Map<String, dynamic> map) {
    return TenantArgs(
      allowPasswordSignup:
          Input.asOptionalInput<bool>(map['allowPasswordSignup']),
      client: Input.asOptionalInput<TenantClient>(map['client']),
      disableAuth: Input.asOptionalInput<bool>(map['disableAuth']),
      displayName: Input.asInput<String>(map['displayName']),
      enableEmailLinkSignin:
          Input.asOptionalInput<bool>(map['enableEmailLinkSignin']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
