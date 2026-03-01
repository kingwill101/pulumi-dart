// ignore_for_file: unused_element, unnecessary_cast

class EndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabel {
  /// Required. Label name presented as key in xDS Node Metadata.
  final String labelName;

  /// Required. Label value presented as value corresponding to the above key, in xDS Node Metadata.
  final String labelValue;

  /// Creates a new [EndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabel].
  /// [labelName] Required. Label name presented as key in xDS Node Metadata.
  /// [labelValue] Required. Label value presented as value corresponding to the above key, in xDS Node Metadata.
  EndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabel({
    required this.labelName,
    required this.labelValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'labelName': labelName, 'labelValue': labelValue};
  }

  factory EndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabel.fromMap(
    Map<String, dynamic> map,
  ) {
    return EndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabel(
      labelName: map['labelName'] as String,
      labelValue: map['labelValue'] as String,
    );
  }
}
