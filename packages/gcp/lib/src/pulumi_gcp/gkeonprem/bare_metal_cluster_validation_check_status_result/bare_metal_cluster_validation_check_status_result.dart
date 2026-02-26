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

  BareMetalClusterValidationCheckStatusResult({
    this.category,
    this.description,
    this.details,
    this.options,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final categoryValue = category;
    if (categoryValue != null) {
      map['category'] = categoryValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final detailsValue = details;
    if (detailsValue != null) {
      map['details'] = detailsValue;
    }
    final optionsValue = options;
    if (optionsValue != null) {
      map['options'] = optionsValue;
    }
    final reasonValue = reason;
    if (reasonValue != null) {
      map['reason'] = reasonValue;
    }
    return map;
  }

  factory BareMetalClusterValidationCheckStatusResult.fromMap(
      Map<String, dynamic> map) {
    return BareMetalClusterValidationCheckStatusResult(
      category: map['category'] == null ? null : map['category'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      details: map['details'] == null ? null : map['details'] as String,
      options: map['options'] == null ? null : map['options'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
    );
  }
}
