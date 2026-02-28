// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_policy_endpoint_matcher_metadata_label_matcher_metadata_label.dart';

class EndpointPolicyEndpointMatcherMetadataLabelMatcher {
  /// Specifies how matching should be done.
  /// Possible values are: `MATCH_ANY`, `MATCH_ALL`.
  final String metadataLabelMatchCriteria;
  /// The list of label value pairs that must match labels in the provided metadata based on filterMatchCriteria
  /// Structure is documented below.
  final List<EndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabel>? metadataLabels;

  /// Creates a new [EndpointPolicyEndpointMatcherMetadataLabelMatcher].
  /// [metadataLabelMatchCriteria] Specifies how matching should be done.
  /// [metadataLabels] The list of label value pairs that must match labels in the provided metadata based on filterMatchCriteria
  EndpointPolicyEndpointMatcherMetadataLabelMatcher({
    required this.metadataLabelMatchCriteria,
    this.metadataLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataLabelMatchCriteria': metadataLabelMatchCriteria,
      'metadataLabels': ?metadataLabels == null ? null : pulumi.Input.encodeList<EndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabel, Map<String, dynamic>>(metadataLabels!, (value) => value.toMap()),
    };
  }

  factory EndpointPolicyEndpointMatcherMetadataLabelMatcher.fromMap(Map<String, dynamic> map) {
    return EndpointPolicyEndpointMatcherMetadataLabelMatcher(
      metadataLabelMatchCriteria: map['metadataLabelMatchCriteria'] as String,
      metadataLabels: map['metadataLabels'] == null ? null : pulumi.Input.decodeList<EndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabel>(map['metadataLabels'], (value) => EndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabel.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

