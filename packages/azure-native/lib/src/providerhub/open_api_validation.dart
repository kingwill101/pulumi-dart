// ignore_for_file: unused_element, unnecessary_cast


class OpenApiValidation {
  /// Indicates whether a non compliance response is allowed for a LIST call
  final bool? allowNoncompliantCollectionResponse;

  /// Creates a new [OpenApiValidation].
  /// [allowNoncompliantCollectionResponse] Indicates whether a non compliance response is allowed for a LIST call
  OpenApiValidation({
    this.allowNoncompliantCollectionResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNoncompliantCollectionResponse': ?allowNoncompliantCollectionResponse,
    };
  }

  factory OpenApiValidation.fromMap(Map<String, dynamic> map) {
    return OpenApiValidation(
      allowNoncompliantCollectionResponse: map['allowNoncompliantCollectionResponse'] == null ? null : map['allowNoncompliantCollectionResponse'] as bool,
    );
  }
}

