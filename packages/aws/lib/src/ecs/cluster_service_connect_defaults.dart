// ignore_for_file: unused_element, unnecessary_cast

class ClusterServiceConnectDefaults {
  /// ARN of the `aws.servicediscovery.HttpNamespace` that's used when you create a service and don't specify a Service Connect configuration.
  final String namespace;

  /// Creates a new [ClusterServiceConnectDefaults].
  /// [namespace] ARN of the `aws.servicediscovery.HttpNamespace` that's used when you create a service and don't specify a Service Connect configuration.
  ClusterServiceConnectDefaults({required this.namespace});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'namespace': namespace};
  }

  factory ClusterServiceConnectDefaults.fromMap(Map<String, dynamic> map) {
    return ClusterServiceConnectDefaults(namespace: map['namespace'] as String);
  }
}
