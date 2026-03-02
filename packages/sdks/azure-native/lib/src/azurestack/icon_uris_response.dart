// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Links to product icons.
class IconUrisResponse {
  /// URI to hero icon.
  final pulumi.Input<String>? hero;
  /// URI to large icon.
  final pulumi.Input<String>? large;
  /// URI to medium icon.
  final pulumi.Input<String>? medium;
  /// URI to small icon.
  final pulumi.Input<String>? small;
  /// URI to wide icon.
  final pulumi.Input<String>? wide;

  /// Creates a new [IconUrisResponse].
  /// [hero] URI to hero icon.
  /// [large] URI to large icon.
  /// [medium] URI to medium icon.
  /// [small] URI to small icon.
  /// [wide] URI to wide icon.
  IconUrisResponse({
    this.hero,
    this.large,
    this.medium,
    this.small,
    this.wide,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hero': ?hero,
      'large': ?large,
      'medium': ?medium,
      'small': ?small,
      'wide': ?wide,
    };
  }

  factory IconUrisResponse.fromMap(Map<String, dynamic> map) {
    return IconUrisResponse(
      hero: map['hero'] == null ? null : (map['hero'] as String).input(),
      large: map['large'] == null ? null : (map['large'] as String).input(),
      medium: map['medium'] == null ? null : (map['medium'] as String).input(),
      small: map['small'] == null ? null : (map['small'] as String).input(),
      wide: map['wide'] == null ? null : (map['wide'] as String).input(),
    );
  }
}

