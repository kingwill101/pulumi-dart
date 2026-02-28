// ignore_for_file: unused_element, unnecessary_cast

class InstanceManagedServerCaCaCert {
  /// (Output)
  /// The certificates that form the CA chain, from leaf to root order
  final List<String>? certificates;

  /// Creates a new [InstanceManagedServerCaCaCert].
  /// [certificates] (Output)
  InstanceManagedServerCaCaCert({
    this.certificates,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificatesValue = certificates;
    if (certificatesValue != null) {
      map['certificates'] = certificatesValue;
    }
    return map;
  }

  factory InstanceManagedServerCaCaCert.fromMap(Map<String, dynamic> map) {
    return InstanceManagedServerCaCaCert(
      certificates: map['certificates'] == null
          ? null
          : (map['certificates'] as List).cast<String>(),
    );
  }
}
