// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceManagedServerCaCaCert {
  /// The certificates that form the CA chain, from leaf to root order
  final List<String> certificates;

  GetInstanceManagedServerCaCaCert({
    required this.certificates,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificates'] = certificates;
    return map;
  }

  factory GetInstanceManagedServerCaCaCert.fromMap(Map<String, dynamic> map) {
    return GetInstanceManagedServerCaCaCert(
      certificates: (map['certificates'] as List).cast<String>(),
    );
  }
}
