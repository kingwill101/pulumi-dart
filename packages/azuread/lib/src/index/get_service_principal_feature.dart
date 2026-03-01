// ignore_for_file: unused_element, unnecessary_cast


class GetServicePrincipalFeature {
  /// Whether this service principal represents a custom SAML application.
  final bool customSingleSignOnApp;
  /// Whether this service principal represents an Enterprise Application.
  final bool enterpriseApplication;
  /// Whether this service principal represents a gallery application.
  final bool galleryApplication;
  /// Whether this app is visible to users in My Apps and Office 365 Launcher.
  final bool visibleToUsers;

  /// Creates a new [GetServicePrincipalFeature].
  /// [customSingleSignOnApp] Whether this service principal represents a custom SAML application.
  /// [enterpriseApplication] Whether this service principal represents an Enterprise Application.
  /// [galleryApplication] Whether this service principal represents a gallery application.
  /// [visibleToUsers] Whether this app is visible to users in My Apps and Office 365 Launcher.
  GetServicePrincipalFeature({
    required this.customSingleSignOnApp,
    required this.enterpriseApplication,
    required this.galleryApplication,
    required this.visibleToUsers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customSingleSignOnApp': customSingleSignOnApp,
      'enterpriseApplication': enterpriseApplication,
      'galleryApplication': galleryApplication,
      'visibleToUsers': visibleToUsers,
    };
  }

  factory GetServicePrincipalFeature.fromMap(Map<String, dynamic> map) {
    return GetServicePrincipalFeature(
      customSingleSignOnApp: map['customSingleSignOnApp'] as bool,
      enterpriseApplication: map['enterpriseApplication'] as bool,
      galleryApplication: map['galleryApplication'] as bool,
      visibleToUsers: map['visibleToUsers'] as bool,
    );
  }
}

