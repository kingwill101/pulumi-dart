// ignore_for_file: unused_element, unnecessary_cast


class ClusterIngressProfile {
  /// The IP Address the Ingress Profile is associated with.
  final String? ipAddress;
  /// The name of the Azure Red Hat OpenShift Cluster to create. Changing this forces a new resource to be created.
  final String? name;
  /// Cluster Ingress visibility. Supported values are `Public` and `Private`. Changing this forces a new resource to be created.
  final String visibility;

  /// Creates a new [ClusterIngressProfile].
  /// [ipAddress] The IP Address the Ingress Profile is associated with.
  /// [name] The name of the Azure Red Hat OpenShift Cluster to create. Changing this forces a new resource to be created.
  /// [visibility] Cluster Ingress visibility. Supported values are `Public` and `Private`. Changing this forces a new resource to be created.
  ClusterIngressProfile({
    this.ipAddress,
    this.name,
    required this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'name': ?name,
      'visibility': visibility,
    };
  }

  factory ClusterIngressProfile.fromMap(Map<String, dynamic> map) {
    return ClusterIngressProfile(
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      visibility: map['visibility'] as String,
    );
  }
}

