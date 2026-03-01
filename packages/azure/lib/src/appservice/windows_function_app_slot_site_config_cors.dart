// ignore_for_file: unused_element, unnecessary_cast


class WindowsFunctionAppSlotSiteConfigCors {
  /// Specifies a list of origins that should be allowed to make cross-origin calls.
  final List<String>? allowedOrigins;
  /// Are credentials allowed in CORS requests? Defaults to `false`.
  final bool? supportCredentials;

  /// Creates a new [WindowsFunctionAppSlotSiteConfigCors].
  /// [allowedOrigins] Specifies a list of origins that should be allowed to make cross-origin calls.
  /// [supportCredentials] Are credentials allowed in CORS requests? Defaults to `false`.
  WindowsFunctionAppSlotSiteConfigCors({
    this.allowedOrigins,
    this.supportCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': ?allowedOrigins,
      'supportCredentials': ?supportCredentials,
    };
  }

  factory WindowsFunctionAppSlotSiteConfigCors.fromMap(Map<String, dynamic> map) {
    return WindowsFunctionAppSlotSiteConfigCors(
      allowedOrigins: map['allowedOrigins'] == null ? null : (map['allowedOrigins'] as List).cast<String>(),
      supportCredentials: map['supportCredentials'] == null ? null : map['supportCredentials'] as bool,
    );
  }
}

