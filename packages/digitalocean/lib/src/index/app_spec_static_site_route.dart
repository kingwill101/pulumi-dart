// ignore_for_file: unused_element, unnecessary_cast


class AppSpecStaticSiteRoute {
  /// Paths must start with `/` and must be unique within the app.
  final String? path;
  /// An optional flag to preserve the path that is forwarded to the backend service.
  final bool? preservePathPrefix;

  /// Creates a new [AppSpecStaticSiteRoute].
  /// [path] Paths must start with `/` and must be unique within the app.
  /// [preservePathPrefix] An optional flag to preserve the path that is forwarded to the backend service.
  AppSpecStaticSiteRoute({
    this.path,
    this.preservePathPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'preservePathPrefix': ?preservePathPrefix,
    };
  }

  factory AppSpecStaticSiteRoute.fromMap(Map<String, dynamic> map) {
    return AppSpecStaticSiteRoute(
      path: map['path'] == null ? null : map['path'] as String,
      preservePathPrefix: map['preservePathPrefix'] == null ? null : map['preservePathPrefix'] as bool,
    );
  }
}

