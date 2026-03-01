// ignore_for_file: unused_element, unnecessary_cast

class BareMetalClusterValidationCheckStatusResult {
  /// (Output)
  /// The category of the validation.
  final String? category;

  /// A human readable description of this Bare Metal User Cluster.
  final String? description;

  /// (Output)
  /// Detailed failure information, which might be unformatted.
  final String? details;

  /// (Output)
  /// Options used for the validation check.
  final String? options;

  /// (Output)
  /// A human-readable message of the check failure.
  final String? reason;

  /// Creates a new [BareMetalClusterValidationCheckStatusResult].
  /// [category] (Output)
  /// [description] A human readable description of this Bare Metal User Cluster.
  /// [details] (Output)
  /// [options] (Output)
  /// [reason] (Output)
  BareMetalClusterValidationCheckStatusResult({
    this.category,
    this.description,
    this.details,
    this.options,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'description': ?description,
      'details': ?details,
      'options': ?options,
      'reason': ?reason,
    };
  }

  factory BareMetalClusterValidationCheckStatusResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return BareMetalClusterValidationCheckStatusResult(
      category: map['category'] == null ? null : map['category'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      details: map['details'] == null ? null : map['details'] as String,
      options: map['options'] == null ? null : map['options'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
    );
  }
}
