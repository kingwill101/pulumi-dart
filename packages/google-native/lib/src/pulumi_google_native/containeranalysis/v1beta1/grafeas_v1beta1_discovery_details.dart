// ignore_for_file: unused_element, unnecessary_cast

import 'discovered2.dart';

/// Details of a discovery occurrence.
class GrafeasV1beta1DiscoveryDetails {
  /// Analysis status for the discovered resource.
  final Discovered2 discovered;

  GrafeasV1beta1DiscoveryDetails({
    required this.discovered,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['discovered'] = discovered.toMap();
    return map;
  }

  factory GrafeasV1beta1DiscoveryDetails.fromMap(Map<String, dynamic> map) {
    return GrafeasV1beta1DiscoveryDetails(
      discovered: Discovered2.fromMap(
          (map['discovered'] as Map).cast<String, dynamic>()),
    );
  }
}
