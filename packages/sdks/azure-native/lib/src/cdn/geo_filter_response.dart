// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Rules defining user's geo access within a CDN endpoint.
class GeoFilterResponse {
  /// Action of the geo filter, i.e. allow or block access.
  final pulumi.Input<String> action;
  /// Two letter country or region codes defining user country or region access in a geo filter, e.g. AU, MX, US.
  final pulumi.Input<List<String>> countryCodes;
  /// Relative path applicable to geo filter. (e.g. '/mypictures', '/mypicture/kitty.jpg', and etc.)
  final pulumi.Input<String> relativePath;

  /// Creates a new [GeoFilterResponse].
  /// [action] Action of the geo filter, i.e. allow or block access.
  /// [countryCodes] Two letter country or region codes defining user country or region access in a geo filter, e.g. AU, MX, US.
  /// [relativePath] Relative path applicable to geo filter. (e.g. '/mypictures', '/mypicture/kitty.jpg', and etc.)
  const GeoFilterResponse({
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
      action: pulumi.Input.fromValue(map['action'] as String),
      countryCodes: pulumi.Input.fromValue((map['countryCodes'] as List).cast<String>()),
      relativePath: pulumi.Input.fromValue(map['relativePath'] as String),
    );
  }
}

