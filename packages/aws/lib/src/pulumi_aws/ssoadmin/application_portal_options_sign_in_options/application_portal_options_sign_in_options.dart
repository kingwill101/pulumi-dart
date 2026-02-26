// ignore_for_file: unused_element, unnecessary_cast

class ApplicationPortalOptionsSignInOptions {
  /// URL that accepts authentication requests for an application.
  final String? applicationUrl;

  /// Determines how IAM Identity Center navigates the user to the target application.
  /// Valid values are `APPLICATION` and `IDENTITY_CENTER`.
  /// If `APPLICATION` is set, IAM Identity Center redirects the customer to the configured <span pulumi-lang-nodejs="`applicationUrl`" pulumi-lang-dotnet="`ApplicationUrl`" pulumi-lang-go="`applicationUrl`" pulumi-lang-python="`application_url`" pulumi-lang-yaml="`applicationUrl`" pulumi-lang-java="`applicationUrl`">`application_url`</span>.
  /// If `IDENTITY_CENTER` is set, IAM Identity Center uses SAML identity-provider initiated authentication to sign the customer directly into a SAML-based application.
  final String origin;

  ApplicationPortalOptionsSignInOptions({
    this.applicationUrl,
    required this.origin,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applicationUrlValue = applicationUrl;
    if (applicationUrlValue != null) {
      map['applicationUrl'] = applicationUrlValue;
    }
    map['origin'] = origin;
    return map;
  }

  factory ApplicationPortalOptionsSignInOptions.fromMap(
      Map<String, dynamic> map) {
    return ApplicationPortalOptionsSignInOptions(
      applicationUrl: map['applicationUrl'] == null
          ? null
          : map['applicationUrl'] as String,
      origin: map['origin'] as String,
    );
  }
}
