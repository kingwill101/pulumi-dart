// ignore_for_file: unused_element, unnecessary_cast

import 'endpoint_matcher_metadata_label_matcher_response.dart';

/// A definition of a matcher that selects endpoints to which the policies should be applied.
class EndpointMatcherResponse {
  /// The matcher is based on node metadata presented by xDS clients.
  final EndpointMatcherMetadataLabelMatcherResponse metadataLabelMatcher;

  /// Creates a new [EndpointMatcherResponse].
  /// [metadataLabelMatcher] The matcher is based on node metadata presented by xDS clients.
  EndpointMatcherResponse({
    required this.metadataLabelMatcher,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metadataLabelMatcher'] = metadataLabelMatcher.toMap();
    return map;
  }

  factory EndpointMatcherResponse.fromMap(Map<String, dynamic> map) {
    return EndpointMatcherResponse(
      metadataLabelMatcher: EndpointMatcherMetadataLabelMatcherResponse.fromMap(
          (map['metadataLabelMatcher'] as Map).cast<String, dynamic>()),
    );
  }
}
