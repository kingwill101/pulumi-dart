// ignore_for_file: unused_element, unnecessary_cast

/// Defines a name-pair value for a single label.
class EndpointMatcherMetadataLabelMatcherMetadataLabels {
  /// Label name presented as key in xDS Node Metadata.
  final String labelName;

  /// Label value presented as value corresponding to the above key, in xDS Node Metadata.
  final String labelValue;

  /// Creates a new [EndpointMatcherMetadataLabelMatcherMetadataLabels].
  /// [labelName] Label name presented as key in xDS Node Metadata.
  /// [labelValue] Label value presented as value corresponding to the above key, in xDS Node Metadata.
  EndpointMatcherMetadataLabelMatcherMetadataLabels({
    required this.labelName,
    required this.labelValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'labelName': labelName, 'labelValue': labelValue};
  }

  factory EndpointMatcherMetadataLabelMatcherMetadataLabels.fromMap(
    Map<String, dynamic> map,
  ) {
    return EndpointMatcherMetadataLabelMatcherMetadataLabels(
      labelName: map['labelName'] as String,
      labelValue: map['labelValue'] as String,
    );
  }
}
