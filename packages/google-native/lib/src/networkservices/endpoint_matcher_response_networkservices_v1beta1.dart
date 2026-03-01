// ignore_for_file: unused_element, unnecessary_cast

import 'metadata_label_matcher_response.dart';

/// A definition of a matcher that selects endpoints to which the policies should be applied.
class EndpointMatcherResponseNetworkservicesV1beta1 {
  /// The matcher is based on node metadata presented by xDS clients.
  final MetadataLabelMatcherResponse metadataLabelMatcher;

  /// Creates a new [EndpointMatcherResponseNetworkservicesV1beta1].
  /// [metadataLabelMatcher] The matcher is based on node metadata presented by xDS clients.
  EndpointMatcherResponseNetworkservicesV1beta1({
    required this.metadataLabelMatcher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataLabelMatcher': metadataLabelMatcher.toMap(),
    };
  }

  factory EndpointMatcherResponseNetworkservicesV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return EndpointMatcherResponseNetworkservicesV1beta1(
      metadataLabelMatcher: MetadataLabelMatcherResponse.fromMap(
        (map['metadataLabelMatcher'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
