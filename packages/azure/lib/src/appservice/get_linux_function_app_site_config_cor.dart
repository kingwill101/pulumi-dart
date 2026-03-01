// ignore_for_file: unused_element, unnecessary_cast


class GetLinuxFunctionAppSiteConfigCor {
  /// A list of origins that are allowed to make cross-origin calls.
  final List<String> allowedOrigins;
  /// Are credentials allowed in CORS requests?
  final bool supportCredentials;

  /// Creates a new [GetLinuxFunctionAppSiteConfigCor].
  /// [allowedOrigins] A list of origins that are allowed to make cross-origin calls.
  /// [supportCredentials] Are credentials allowed in CORS requests?
  GetLinuxFunctionAppSiteConfigCor({
    required this.allowedOrigins,
    required this.supportCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': allowedOrigins,
      'supportCredentials': supportCredentials,
    };
  }

  factory GetLinuxFunctionAppSiteConfigCor.fromMap(Map<String, dynamic> map) {
    return GetLinuxFunctionAppSiteConfigCor(
      allowedOrigins: (map['allowedOrigins'] as List).cast<String>(),
      supportCredentials: map['supportCredentials'] as bool,
    );
  }
}

