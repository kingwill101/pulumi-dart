// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationPortalOptionsSignInOptions {
  /// URL that accepts authentication requests for an application.
  final pulumi.Input<String?>? applicationUrl;
  /// Determines how IAM Identity Center navigates the user to the target application.
  /// Valid values are `APPLICATION` and `IDENTITY_CENTER`.
  /// If `APPLICATION` is set, IAM Identity Center redirects the customer to the configured `applicationUrl`.
  /// If `IDENTITY_CENTER` is set, IAM Identity Center uses SAML identity-provider initiated authentication to sign the customer directly into a SAML-based application.
  final pulumi.Input<String> origin;

  /// Creates a new [ApplicationPortalOptionsSignInOptions].
  /// [applicationUrl] URL that accepts authentication requests for an application.
  /// [origin] Determines how IAM Identity Center navigates the user to the target application.
  const ApplicationPortalOptionsSignInOptions({
    this.applicationUrl,
    required this.origin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationUrl': ?applicationUrl,
      'origin': origin,
    };
  }

  factory ApplicationPortalOptionsSignInOptions.fromMap(Map<String, dynamic> map) {
    return ApplicationPortalOptionsSignInOptions(
      applicationUrl: (() { final guardedValue = map['applicationUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      origin: pulumi.Input.fromValue(map['origin'] as String),
    );
  }
}
