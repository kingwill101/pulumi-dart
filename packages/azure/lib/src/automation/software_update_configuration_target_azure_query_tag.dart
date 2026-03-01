// ignore_for_file: unused_element, unnecessary_cast


class SoftwareUpdateConfigurationTargetAzureQueryTag {
  /// Specifies the name of the tag to filter.
  final String tag;
  /// Specifies a list of values for this tag key.
  final List<String> values;

  /// Creates a new [SoftwareUpdateConfigurationTargetAzureQueryTag].
  /// [tag] Specifies the name of the tag to filter.
  /// [values] Specifies a list of values for this tag key.
  SoftwareUpdateConfigurationTargetAzureQueryTag({
    required this.tag,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tag': tag,
      'values': values,
    };
  }

  factory SoftwareUpdateConfigurationTargetAzureQueryTag.fromMap(Map<String, dynamic> map) {
    return SoftwareUpdateConfigurationTargetAzureQueryTag(
      tag: map['tag'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

