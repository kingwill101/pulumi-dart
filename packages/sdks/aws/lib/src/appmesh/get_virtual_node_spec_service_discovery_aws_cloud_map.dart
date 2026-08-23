// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecServiceDiscoveryAwsCloudMap {
  /// String map that contains attributes with values that you can use to filter instances by any custom attribute that you specified when you registered the instance.
  final pulumi.Input<Map<String, String>> attributes;
  /// Name of the AWS Cloud Map namespace to use.
  final pulumi.Input<String> namespaceName;
  /// Name of the AWS Cloud Map service to use.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetVirtualNodeSpecServiceDiscoveryAwsCloudMap].
  /// [attributes] String map that contains attributes with values that you can use to filter instances by any custom attribute that you specified when you registered the instance.
  /// [namespaceName] Name of the AWS Cloud Map namespace to use.
  /// [serviceName] Name of the AWS Cloud Map service to use.
  const GetVirtualNodeSpecServiceDiscoveryAwsCloudMap({
    required this.attributes,
    required this.namespaceName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': attributes,
      'namespaceName': namespaceName,
      'serviceName': serviceName,
    };
  }

  factory GetVirtualNodeSpecServiceDiscoveryAwsCloudMap.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecServiceDiscoveryAwsCloudMap(
      attributes: pulumi.Input.fromValue((map['attributes'] as Map).cast<String, String>()),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
