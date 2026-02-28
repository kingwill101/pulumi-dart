// ignore_for_file: unused_element, unnecessary_cast

/// Defines a name-pair value for a single label.
class MetadataLabels {
  /// Label name presented as key in xDS Node Metadata.
  final String labelName;

  /// Label value presented as value corresponding to the above key, in xDS Node Metadata.
  final String labelValue;

  /// Creates a new [MetadataLabels].
  /// [labelName] Label name presented as key in xDS Node Metadata.
  /// [labelValue] Label value presented as value corresponding to the above key, in xDS Node Metadata.
  MetadataLabels({
    required this.labelName,
    required this.labelValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['labelName'] = labelName;
    map['labelValue'] = labelValue;
    return map;
  }

  factory MetadataLabels.fromMap(Map<String, dynamic> map) {
    return MetadataLabels(
      labelName: map['labelName'] as String,
      labelValue: map['labelValue'] as String,
    );
  }
}
