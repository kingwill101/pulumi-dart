// ignore_for_file: unused_element, unnecessary_cast

import 'metadata_label_matcher_response.dart';

/// A definition of a matcher that selects endpoints to which the policies should be applied.
class EndpointMatcherResponseNetworkservicesV1beta1 {
  /// The matcher is based on node metadata presented by xDS clients.
  final MetadataLabelMatcherResponse metadataLabelMatcher;

  EndpointMatcherResponseNetworkservicesV1beta1({
    required this.metadataLabelMatcher,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metadataLabelMatcher'] = metadataLabelMatcher.toMap();
    return map;
  }

  factory EndpointMatcherResponseNetworkservicesV1beta1.fromMap(
      Map<String, dynamic> map) {
    return EndpointMatcherResponseNetworkservicesV1beta1(
      metadataLabelMatcher: MetadataLabelMatcherResponse.fromMap(
          (map['metadataLabelMatcher'] as Map).cast<String, dynamic>()),
    );
  }
}
