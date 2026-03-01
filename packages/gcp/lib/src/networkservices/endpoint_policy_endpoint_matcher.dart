// ignore_for_file: unused_element, unnecessary_cast

import 'endpoint_policy_endpoint_matcher_metadata_label_matcher.dart';

class EndpointPolicyEndpointMatcher {
  /// The matcher is based on node metadata presented by xDS clients.
  /// Structure is documented below.
  final EndpointPolicyEndpointMatcherMetadataLabelMatcher metadataLabelMatcher;

  /// Creates a new [EndpointPolicyEndpointMatcher].
  /// [metadataLabelMatcher] The matcher is based on node metadata presented by xDS clients.
  EndpointPolicyEndpointMatcher({required this.metadataLabelMatcher});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataLabelMatcher': metadataLabelMatcher.toMap(),
    };
  }

  factory EndpointPolicyEndpointMatcher.fromMap(Map<String, dynamic> map) {
    return EndpointPolicyEndpointMatcher(
      metadataLabelMatcher:
          EndpointPolicyEndpointMatcherMetadataLabelMatcher.fromMap(
            (map['metadataLabelMatcher'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
