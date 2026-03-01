// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsFunctionAppSiteConfigCor {
  /// A list of origins that should be allowed to make cross-origin calls.
  final List<String> allowedOrigins;
  /// Are credentials allows in CORS requests?.
  final bool supportCredentials;

  /// Creates a new [GetWindowsFunctionAppSiteConfigCor].
  /// [allowedOrigins] A list of origins that should be allowed to make cross-origin calls.
  /// [supportCredentials] Are credentials allows in CORS requests?.
  GetWindowsFunctionAppSiteConfigCor({
    required this.allowedOrigins,
    required this.supportCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': allowedOrigins,
      'supportCredentials': supportCredentials,
    };
  }

  factory GetWindowsFunctionAppSiteConfigCor.fromMap(Map<String, dynamic> map) {
    return GetWindowsFunctionAppSiteConfigCor(
      allowedOrigins: (map['allowedOrigins'] as List).cast<String>(),
      supportCredentials: map['supportCredentials'] as bool,
    );
  }
}

