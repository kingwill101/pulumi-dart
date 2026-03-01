// ignore_for_file: unused_element, unnecessary_cast

class ApplicationPortalOptionsSignInOptions {
  /// URL that accepts authentication requests for an application.
  final String? applicationUrl;

  /// Determines how IAM Identity Center navigates the user to the target application.
  /// Valid values are `APPLICATION` and `IDENTITY_CENTER`.
  /// If `APPLICATION` is set, IAM Identity Center redirects the customer to the configured `application_url`.
  /// If `IDENTITY_CENTER` is set, IAM Identity Center uses SAML identity-provider initiated authentication to sign the customer directly into a SAML-based application.
  final String origin;

  /// Creates a new [ApplicationPortalOptionsSignInOptions].
  /// [applicationUrl] URL that accepts authentication requests for an application.
  /// [origin] Determines how IAM Identity Center navigates the user to the target application.
  ApplicationPortalOptionsSignInOptions({
    this.applicationUrl,
    required this.origin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationUrl': ?applicationUrl,
      'origin': origin,
    };
  }

  factory ApplicationPortalOptionsSignInOptions.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationPortalOptionsSignInOptions(
      applicationUrl: map['applicationUrl'] == null
          ? null
          : map['applicationUrl'] as String,
      origin: map['origin'] as String,
    );
  }
}
