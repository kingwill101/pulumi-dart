// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterServiceConnectDefault {
  final pulumi.Input<String> namespace;

  /// Creates a new [GetClusterServiceConnectDefault].
  /// [namespace] Required.
  GetClusterServiceConnectDefault({required this.namespace});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'namespace': namespace};
  }

  factory GetClusterServiceConnectDefault.fromMap(Map<String, dynamic> map) {
    return GetClusterServiceConnectDefault(
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
    );
  }
}
