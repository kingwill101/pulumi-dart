// ignore_for_file: unused_element, unnecessary_cast


class GetStaticWebAppBasicAuth {
  /// The Environment types which are configured to use Basic Auth access.
  final String environments;

  /// Creates a new [GetStaticWebAppBasicAuth].
  /// [environments] The Environment types which are configured to use Basic Auth access.
  GetStaticWebAppBasicAuth({
    required this.environments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environments': environments,
    };
  }

  factory GetStaticWebAppBasicAuth.fromMap(Map<String, dynamic> map) {
    return GetStaticWebAppBasicAuth(
      environments: map['environments'] as String,
    );
  }
}

