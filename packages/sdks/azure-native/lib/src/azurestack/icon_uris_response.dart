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
      hero: (() { final guardedValue = map['hero']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      large: (() { final guardedValue = map['large']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      medium: (() { final guardedValue = map['medium']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      small: (() { final guardedValue = map['small']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wide: (() { final guardedValue = map['wide']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

