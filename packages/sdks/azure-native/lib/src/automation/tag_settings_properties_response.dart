// ignore_for_file: unused_element, unnecessary_cast


/// Tag filter information for the VM.
class TagSettingsPropertiesResponse {
  /// Filter VMs by Any or All specified tags.
  final String? filterOperator;
  /// Dictionary of tags with its list of values.
  final Map<String, List<String>>? tags;

  /// Creates a new [TagSettingsPropertiesResponse].
  /// [filterOperator] Filter VMs by Any or All specified tags.
  /// [tags] Dictionary of tags with its list of values.
  TagSettingsPropertiesResponse({
    this.filterOperator,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterOperator': ?filterOperator,
      'tags': ?tags,
    };
  }

  factory TagSettingsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TagSettingsPropertiesResponse(
      filterOperator: map['filterOperator'] == null ? null : map['filterOperator'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, List<String>>(),
    );
  }
}

