// ignore_for_file: unused_element, unnecessary_cast

import 'discovered_response_containeranalysis_v1beta1.dart';

/// Details of a discovery occurrence.
class GrafeasV1beta1DiscoveryDetailsResponse {
  /// Analysis status for the discovered resource.
  final DiscoveredResponseContaineranalysisV1beta1 discovered;

  /// Creates a new [GrafeasV1beta1DiscoveryDetailsResponse].
  /// [discovered] Analysis status for the discovered resource.
  GrafeasV1beta1DiscoveryDetailsResponse({
    required this.discovered,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['discovered'] = discovered.toMap();
    return map;
  }

  factory GrafeasV1beta1DiscoveryDetailsResponse.fromMap(
      Map<String, dynamic> map) {
    return GrafeasV1beta1DiscoveryDetailsResponse(
      discovered: DiscoveredResponseContaineranalysisV1beta1.fromMap(
          (map['discovered'] as Map).cast<String, dynamic>()),
    );
  }
}
