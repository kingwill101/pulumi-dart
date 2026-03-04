// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualClusterContainerProviderInfoEksInfo {
  /// The namespace where the EMR Containers cluster is running
  final pulumi.Input<String> namespace;

  /// Creates a new [GetVirtualClusterContainerProviderInfoEksInfo].
  /// [namespace] The namespace where the EMR Containers cluster is running
  GetVirtualClusterContainerProviderInfoEksInfo({required this.namespace});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'namespace': namespace};
  }

  factory GetVirtualClusterContainerProviderInfoEksInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualClusterContainerProviderInfoEksInfo(
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
    );
  }
}
