// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualClusterContainerProviderInfoEksInfo {
  /// The namespace where the EMR Containers cluster is running
  final String namespace;

  GetVirtualClusterContainerProviderInfoEksInfo({
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['namespace'] = namespace;
    return map;
  }

  factory GetVirtualClusterContainerProviderInfoEksInfo.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualClusterContainerProviderInfoEksInfo(
      namespace: map['namespace'] as String,
    );
  }
}
