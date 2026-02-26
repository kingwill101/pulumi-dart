// ignore_for_file: unused_element, unnecessary_cast

class VirtualClusterContainerProviderInfoEksInfo {
  /// The namespace where the EMR Containers cluster is running
  final String? namespace;

  VirtualClusterContainerProviderInfoEksInfo({
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    return map;
  }

  factory VirtualClusterContainerProviderInfoEksInfo.fromMap(
      Map<String, dynamic> map) {
    return VirtualClusterContainerProviderInfoEksInfo(
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
    );
  }
}
