// ignore_for_file: unused_element, unnecessary_cast


class ClusterManagedServerCaCaCert {
  /// (Output)
  /// The certificates that form the CA chain, from leaf to root order
  final List<String>? certificates;

  /// Creates a new [ClusterManagedServerCaCaCert].
  /// [certificates] (Output)
  ClusterManagedServerCaCaCert({
    this.certificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': ?certificates,
    };
  }

  factory ClusterManagedServerCaCaCert.fromMap(Map<String, dynamic> map) {
    return ClusterManagedServerCaCaCert(
      certificates: map['certificates'] == null ? null : (map['certificates'] as List).cast<String>(),
    );
  }
}

