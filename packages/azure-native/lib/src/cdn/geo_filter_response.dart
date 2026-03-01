// ignore_for_file: unused_element, unnecessary_cast


/// Rules defining user's geo access within a CDN endpoint.
class GeoFilterResponse {
  /// Action of the geo filter, i.e. allow or block access.
  final String action;
  /// Two letter country or region codes defining user country or region access in a geo filter, e.g. AU, MX, US.
  final List<String> countryCodes;
  /// Relative path applicable to geo filter. (e.g. '/mypictures', '/mypicture/kitty.jpg', and etc.)
  final String relativePath;

  /// Creates a new [GeoFilterResponse].
  /// [action] Action of the geo filter, i.e. allow or block access.
  /// [countryCodes] Two letter country or region codes defining user country or region access in a geo filter, e.g. AU, MX, US.
  /// [relativePath] Relative path applicable to geo filter. (e.g. '/mypictures', '/mypicture/kitty.jpg', and etc.)
  GeoFilterResponse({
    required this.action,
    required this.countryCodes,
    required this.relativePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'countryCodes': countryCodes,
      'relativePath': relativePath,
    };
  }

  factory GeoFilterResponse.fromMap(Map<String, dynamic> map) {
    return GeoFilterResponse(
      action: map['action'] as String,
      countryCodes: (map['countryCodes'] as List).cast<String>(),
      relativePath: map['relativePath'] as String,
    );
  }
}

