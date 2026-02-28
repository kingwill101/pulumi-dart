// ignore_for_file: unused_element, unnecessary_cast


/// State common to all model types. Includes publishing and validation information.
class ModelState {
  /// Indicates if this model has been published.
  final bool? published;

  /// Creates a new [ModelState].
  /// [published] Indicates if this model has been published.
  ModelState({
    this.published,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'published': ?published,
    };
  }

  factory ModelState.fromMap(Map<String, dynamic> map) {
    return ModelState(
      published: map['published'] == null ? null : map['published'] as bool,
    );
  }
}

