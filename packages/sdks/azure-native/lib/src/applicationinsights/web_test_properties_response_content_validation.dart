// ignore_for_file: unused_element, unnecessary_cast


/// The collection of content validation properties
class WebTestPropertiesResponseContentValidation {
  /// Content to look for in the return of the WebTest.  Must not be null or empty.
  final String? contentMatch;
  /// When set, this value makes the ContentMatch validation case insensitive.
  final bool? ignoreCase;
  /// When true, validation will pass if there is a match for the ContentMatch string.  If false, validation will fail if there is a match
  final bool? passIfTextFound;

  /// Creates a new [WebTestPropertiesResponseContentValidation].
  /// [contentMatch] Content to look for in the return of the WebTest.  Must not be null or empty.
  /// [ignoreCase] When set, this value makes the ContentMatch validation case insensitive.
  /// [passIfTextFound] When true, validation will pass if there is a match for the ContentMatch string.  If false, validation will fail if there is a match
  WebTestPropertiesResponseContentValidation({
    this.contentMatch,
    this.ignoreCase,
    this.passIfTextFound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentMatch': ?contentMatch,
      'ignoreCase': ?ignoreCase,
      'passIfTextFound': ?passIfTextFound,
    };
  }

  factory WebTestPropertiesResponseContentValidation.fromMap(Map<String, dynamic> map) {
    return WebTestPropertiesResponseContentValidation(
      contentMatch: map['contentMatch'] == null ? null : map['contentMatch'] as String,
      ignoreCase: map['ignoreCase'] == null ? null : map['ignoreCase'] as bool,
      passIfTextFound: map['passIfTextFound'] == null ? null : map['passIfTextFound'] as bool,
    );
  }
}

