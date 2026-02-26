// ignore_for_file: unused_element, unnecessary_cast

class VirtualNodeSpecServiceDiscoveryAwsCloudMap {
  /// String map that contains attributes with values that you can use to filter instances by any custom attribute that you specified when you registered the instance. Only instances that match all of the specified key/value pairs will be returned.
  final Map<String, String>? attributes;

  /// Name of the AWS Cloud Map namespace to use.
  /// Use the <span pulumi-lang-nodejs="`aws.servicediscovery.HttpNamespace`" pulumi-lang-dotnet="`aws.servicediscovery.HttpNamespace`" pulumi-lang-go="`servicediscovery.HttpNamespace`" pulumi-lang-python="`servicediscovery.HttpNamespace`" pulumi-lang-yaml="`aws.servicediscovery.HttpNamespace`" pulumi-lang-java="`aws.servicediscovery.HttpNamespace`">`aws.servicediscovery.HttpNamespace`</span> resource to configure a Cloud Map namespace. Must be between 1 and 1024 characters in length.
  final String namespaceName;

  /// Name of the AWS Cloud Map service to use. Use the <span pulumi-lang-nodejs="`aws.servicediscovery.Service`" pulumi-lang-dotnet="`aws.servicediscovery.Service`" pulumi-lang-go="`servicediscovery.Service`" pulumi-lang-python="`servicediscovery.Service`" pulumi-lang-yaml="`aws.servicediscovery.Service`" pulumi-lang-java="`aws.servicediscovery.Service`">`aws.servicediscovery.Service`</span> resource to configure a Cloud Map service. Must be between 1 and 1024 characters in length.
  final String serviceName;

  VirtualNodeSpecServiceDiscoveryAwsCloudMap({
    this.attributes,
    required this.namespaceName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = attributesValue;
    }
    map['namespaceName'] = namespaceName;
    map['serviceName'] = serviceName;
    return map;
  }

  factory VirtualNodeSpecServiceDiscoveryAwsCloudMap.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecServiceDiscoveryAwsCloudMap(
      attributes: map['attributes'] == null
          ? null
          : (map['attributes'] as Map).cast<String, String>(),
      namespaceName: map['namespaceName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}
