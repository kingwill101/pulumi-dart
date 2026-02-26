// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../endpoint_policy_endpoint_matcher_metadata_label_matcher_metadata_label/endpoint_policy_endpoint_matcher_metadata_label_matcher_metadata_label.dart';

class EndpointPolicyEndpointMatcherMetadataLabelMatcher {
  /// Specifies how matching should be done.
  /// Possible values are: `MATCH_ANY`, `MATCH_ALL`.
  final String metadataLabelMatchCriteria;

  /// The list of label value pairs that must match labels in the provided metadata based on filterMatchCriteria
  /// Structure is documented below.
  final List<EndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabel>?
      metadataLabels;

  EndpointPolicyEndpointMatcherMetadataLabelMatcher({
    required this.metadataLabelMatchCriteria,
    this.metadataLabels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metadataLabelMatchCriteria'] = metadataLabelMatchCriteria;
    final metadataLabelsValue = metadataLabels;
    if (metadataLabelsValue != null) {
      map['metadataLabels'] = Input.encodeList<
          EndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabel,
          Map<String, dynamic>>(metadataLabelsValue, (value) => value.toMap());
    }
    return map;
  }

  factory EndpointPolicyEndpointMatcherMetadataLabelMatcher.fromMap(
      Map<String, dynamic> map) {
    return EndpointPolicyEndpointMatcherMetadataLabelMatcher(
      metadataLabelMatchCriteria: map['metadataLabelMatchCriteria'] as String,
      metadataLabels: map['metadataLabels'] == null
          ? null
          : Input.decodeList<
                  EndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabel>(
              map['metadataLabels'],
              (value) =>
                  EndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabel
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
