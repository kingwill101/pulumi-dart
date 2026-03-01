// ignore_for_file: unused_element, unnecessary_cast


class VMwareClusterValidationCheckStatusResult {
  /// (Output)
  /// The category of the validation.
  final String? category;
  /// A human readable description of this VMware User Cluster.
  final String? description;
  /// (Output)
  /// Detailed failure information, which might be unformatted.
  final String? details;
  /// (Output)
  /// Options used for the validation check.
  final String? options;
  /// (Output)
  /// Machine-readable message indicating details about last transition.
  final String? reason;

  /// Creates a new [VMwareClusterValidationCheckStatusResult].
  /// [category] (Output)
  /// [description] A human readable description of this VMware User Cluster.
  /// [details] (Output)
  /// [options] (Output)
  /// [reason] (Output)
  VMwareClusterValidationCheckStatusResult({
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

  factory VMwareClusterValidationCheckStatusResult.fromMap(Map<String, dynamic> map) {
    return VMwareClusterValidationCheckStatusResult(
      category: map['category'] == null ? null : map['category'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      details: map['details'] == null ? null : map['details'] as String,
      options: map['options'] == null ? null : map['options'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
    );
  }
}

