// ignore_for_file: unused_element, unnecessary_cast


/// Links to product icons.
class IconUrisResponse {
  /// URI to hero icon.
  final String? hero;
  /// URI to large icon.
  final String? large;
  /// URI to medium icon.
  final String? medium;
  /// URI to small icon.
  final String? small;
  /// URI to wide icon.
  final String? wide;

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
      hero: map['hero'] == null ? null : map['hero'] as String,
      large: map['large'] == null ? null : map['large'] as String,
      medium: map['medium'] == null ? null : map['medium'] as String,
      small: map['small'] == null ? null : map['small'] as String,
      wide: map['wide'] == null ? null : map['wide'] as String,
    );
  }
}

