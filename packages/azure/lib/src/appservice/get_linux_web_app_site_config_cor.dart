// ignore_for_file: unused_element, unnecessary_cast


class GetLinuxWebAppSiteConfigCor {
  /// A list of origins that should be allowed to make cross-origin calls.
  final List<String> allowedOrigins;
  /// Whether CORS requests with credentials are allowed.
  final bool supportCredentials;

  /// Creates a new [GetLinuxWebAppSiteConfigCor].
  /// [allowedOrigins] A list of origins that should be allowed to make cross-origin calls.
  /// [supportCredentials] Whether CORS requests with credentials are allowed.
  GetLinuxWebAppSiteConfigCor({
    required this.allowedOrigins,
    required this.supportCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': allowedOrigins,
      'supportCredentials': supportCredentials,
    };
  }

  factory GetLinuxWebAppSiteConfigCor.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppSiteConfigCor(
      allowedOrigins: (map['allowedOrigins'] as List).cast<String>(),
      supportCredentials: map['supportCredentials'] as bool,
    );
  }
}

