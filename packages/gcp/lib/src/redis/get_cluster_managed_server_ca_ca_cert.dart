// ignore_for_file: unused_element, unnecessary_cast

class GetClusterManagedServerCaCaCert {
  /// The certificates that form the CA chain, from leaf to root order
  final List<String> certificates;

  /// Creates a new [GetClusterManagedServerCaCaCert].
  /// [certificates] The certificates that form the CA chain, from leaf to root order
  GetClusterManagedServerCaCaCert({
    required this.certificates,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificates'] = certificates;
    return map;
  }

  factory GetClusterManagedServerCaCaCert.fromMap(Map<String, dynamic> map) {
    return GetClusterManagedServerCaCaCert(
      certificates: (map['certificates'] as List).cast<String>(),
    );
  }
}
