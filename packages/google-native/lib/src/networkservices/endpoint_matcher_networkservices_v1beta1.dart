// ignore_for_file: unused_element, unnecessary_cast

import 'metadata_label_matcher.dart';

/// A definition of a matcher that selects endpoints to which the policies should be applied.
class EndpointMatcherNetworkservicesV1beta1 {
  /// The matcher is based on node metadata presented by xDS clients.
  final MetadataLabelMatcher? metadataLabelMatcher;

  /// Creates a new [EndpointMatcherNetworkservicesV1beta1].
  /// [metadataLabelMatcher] The matcher is based on node metadata presented by xDS clients.
  EndpointMatcherNetworkservicesV1beta1({
    this.metadataLabelMatcher,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final metadataLabelMatcherValue = metadataLabelMatcher;
    if (metadataLabelMatcherValue != null) {
      map['metadataLabelMatcher'] = metadataLabelMatcherValue.toMap();
    }
    return map;
  }

  factory EndpointMatcherNetworkservicesV1beta1.fromMap(
      Map<String, dynamic> map) {
    return EndpointMatcherNetworkservicesV1beta1(
      metadataLabelMatcher: map['metadataLabelMatcher'] == null
          ? null
          : MetadataLabelMatcher.fromMap(
              (map['metadataLabelMatcher'] as Map).cast<String, dynamic>()),
    );
  }
}
