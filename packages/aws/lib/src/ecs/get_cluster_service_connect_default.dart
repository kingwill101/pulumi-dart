// ignore_for_file: unused_element, unnecessary_cast

class GetClusterServiceConnectDefault {
  final String namespace;

  /// Creates a new [GetClusterServiceConnectDefault].
  /// [namespace] Required.
  GetClusterServiceConnectDefault({required this.namespace});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'namespace': namespace};
  }

  factory GetClusterServiceConnectDefault.fromMap(Map<String, dynamic> map) {
    return GetClusterServiceConnectDefault(
      namespace: map['namespace'] as String,
    );
  }
}
