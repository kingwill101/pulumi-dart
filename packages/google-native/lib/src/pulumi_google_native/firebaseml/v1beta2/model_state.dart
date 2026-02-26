// ignore_for_file: unused_element, unnecessary_cast

/// State common to all model types. Includes publishing and validation information.
class ModelState {
  /// Indicates if this model has been published.
  final bool? published;

  ModelState({
    this.published,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final publishedValue = published;
    if (publishedValue != null) {
      map['published'] = publishedValue;
    }
    return map;
  }

  factory ModelState.fromMap(Map<String, dynamic> map) {
    return ModelState(
      published: map['published'] == null ? null : map['published'] as bool,
    );
  }
}
