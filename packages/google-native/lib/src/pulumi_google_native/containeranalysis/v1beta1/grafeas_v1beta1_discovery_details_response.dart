// ignore_for_file: unused_element, unnecessary_cast

import 'discovered_response2.dart';

/// Details of a discovery occurrence.
class GrafeasV1beta1DiscoveryDetailsResponse {
  /// Analysis status for the discovered resource.
  final DiscoveredResponse2 discovered;

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
      discovered: DiscoveredResponse2.fromMap(
          (map['discovered'] as Map).cast<String, dynamic>()),
    );
  }
}
