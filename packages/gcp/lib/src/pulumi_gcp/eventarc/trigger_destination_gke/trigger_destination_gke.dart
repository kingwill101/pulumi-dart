// ignore_for_file: unused_element, unnecessary_cast

class TriggerDestinationGke {
  /// Required. The name of the cluster the GKE service is running in. The cluster must be running in the same project as the trigger being created.
  final String cluster;

  /// Required. The name of the Google Compute Engine in which the cluster resides, which can either be compute zone (for example, us-central1-a) for the zonal clusters or region (for example, us-central1) for regional clusters.
  final String location;

  /// Required. The namespace the GKE service is running in.
  final String namespace;

  /// Optional. The relative path on the GKE service the events should be sent to. The value must conform to the definition of a URI path segment (section 3.3 of RFC2396). Examples: "/route", "route", "route/subroute".
  final String? path;

  /// Required. Name of the GKE service.
  final String service;

  TriggerDestinationGke({
    required this.cluster,
    required this.location,
    required this.namespace,
    this.path,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cluster'] = cluster;
    map['location'] = location;
    map['namespace'] = namespace;
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    map['service'] = service;
    return map;
  }

  factory TriggerDestinationGke.fromMap(Map<String, dynamic> map) {
    return TriggerDestinationGke(
      cluster: map['cluster'] as String,
      location: map['location'] as String,
      namespace: map['namespace'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      service: map['service'] as String,
    );
  }
}
