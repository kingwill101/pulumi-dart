// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNodeSpecServiceDiscoveryAwsCloudMap {
  /// String map that contains attributes with values that you can use to filter instances by any custom attribute that you specified when you registered the instance. Only instances that match all of the specified key/value pairs will be returned.
  final pulumi.Input<Map<String, String>>? attributes;
  /// Name of the AWS Cloud Map namespace to use.
  /// Use the `aws.servicediscovery.HttpNamespace` resource to configure a Cloud Map namespace. Must be between 1 and 1024 characters in length.
  final pulumi.Input<String> namespaceName;
  /// Name of the AWS Cloud Map service to use. Use the `aws.servicediscovery.Service` resource to configure a Cloud Map service. Must be between 1 and 1024 characters in length.
  final pulumi.Input<String> serviceName;

  /// Creates a new [VirtualNodeSpecServiceDiscoveryAwsCloudMap].
  /// [attributes] String map that contains attributes with values that you can use to filter instances by any custom attribute that you specified when you registered the instance. Only instances that match all of the specified key/value pairs will be returned.
  /// [namespaceName] Name of the AWS Cloud Map namespace to use.
  /// [serviceName] Name of the AWS Cloud Map service to use. Use the `aws.servicediscovery.Service` resource to configure a Cloud Map service. Must be between 1 and 1024 characters in length.
  VirtualNodeSpecServiceDiscoveryAwsCloudMap({
    this.attributes,
    required this.namespaceName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
      'namespaceName': namespaceName,
      'serviceName': serviceName,
    };
  }

  factory VirtualNodeSpecServiceDiscoveryAwsCloudMap.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecServiceDiscoveryAwsCloudMap(
      attributes: map['attributes'] == null ? null : ((map['attributes'] as Map).cast<String, String>()).input(),
      namespaceName: (map['namespaceName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

