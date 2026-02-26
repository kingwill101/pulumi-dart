// ignore_for_file: unused_element, unnecessary_cast

/// Defines a name-pair value for a single label.
class EndpointMatcherMetadataLabelMatcherMetadataLabelsResponse {
  /// Label name presented as key in xDS Node Metadata.
  final String labelName;

  /// Label value presented as value corresponding to the above key, in xDS Node Metadata.
  final String labelValue;

  EndpointMatcherMetadataLabelMatcherMetadataLabelsResponse({
    required this.labelName,
    required this.labelValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['labelName'] = labelName;
    map['labelValue'] = labelValue;
    return map;
  }

  factory EndpointMatcherMetadataLabelMatcherMetadataLabelsResponse.fromMap(
      Map<String, dynamic> map) {
    return EndpointMatcherMetadataLabelMatcherMetadataLabelsResponse(
      labelName: map['labelName'] as String,
      labelValue: map['labelValue'] as String,
    );
  }
}
