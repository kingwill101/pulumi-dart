// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'geo_filter_actions.dart';

/// Rules defining user's geo access within a CDN endpoint.
class GeoFilter {
  /// Action of the geo filter, i.e. allow or block access.
  final pulumi.Input<GeoFilterActions> action;

  /// Two letter country or region codes defining user country or region access in a geo filter, e.g. AU, MX, US.
  final pulumi.Input<List<String>> countryCodes;

  /// Relative path applicable to geo filter. (e.g. '/mypictures', '/mypicture/kitty.jpg', and etc.)
  final pulumi.Input<String> relativePath;

  /// Creates a new [GeoFilter].
  /// [action] Action of the geo filter, i.e. allow or block access.
  /// [countryCodes] Two letter country or region codes defining user country or region access in a geo filter, e.g. AU, MX, US.
  /// [relativePath] Relative path applicable to geo filter. (e.g. '/mypictures', '/mypicture/kitty.jpg', and etc.)
  GeoFilter({
    required this.action,
    required this.countryCodes,
    required this.relativePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<GeoFilterActions, String>(
        action,
        (value) => value.wireValue,
      ),
      'countryCodes': countryCodes,
      'relativePath': relativePath,
    };
  }

  factory GeoFilter.fromMap(Map<String, dynamic> map) {
    return GeoFilter(
      action: pulumi.Input.fromValue(
        GeoFilterActions.fromValue(map['action']! as String),
      ),
      countryCodes: pulumi.Input.fromValue(
        (map['countryCodes'] as List).cast<String>(),
      ),
      relativePath: pulumi.Input.fromValue(map['relativePath'] as String),
    );
  }
}
