// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecServiceDiscoveryAwsCloudMap {
  final pulumi.Input<Map<String, String>> attributes;
  final pulumi.Input<String> namespaceName;
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetVirtualNodeSpecServiceDiscoveryAwsCloudMap].
  /// [attributes] Required.
  /// [namespaceName] Required.
  /// [serviceName] Required.
  GetVirtualNodeSpecServiceDiscoveryAwsCloudMap({
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

