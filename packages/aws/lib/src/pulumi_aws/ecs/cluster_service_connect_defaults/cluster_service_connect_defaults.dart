// ignore_for_file: unused_element, unnecessary_cast

class ClusterServiceConnectDefaults {
  /// ARN of the <span pulumi-lang-nodejs="`aws.servicediscovery.HttpNamespace`" pulumi-lang-dotnet="`aws.servicediscovery.HttpNamespace`" pulumi-lang-go="`servicediscovery.HttpNamespace`" pulumi-lang-python="`servicediscovery.HttpNamespace`" pulumi-lang-yaml="`aws.servicediscovery.HttpNamespace`" pulumi-lang-java="`aws.servicediscovery.HttpNamespace`">`aws.servicediscovery.HttpNamespace`</span> that's used when you create a service and don't specify a Service Connect configuration.
  final String namespace;

  ClusterServiceConnectDefaults({
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['namespace'] = namespace;
    return map;
  }

  factory ClusterServiceConnectDefaults.fromMap(Map<String, dynamic> map) {
    return ClusterServiceConnectDefaults(
      namespace: map['namespace'] as String,
    );
  }
}
