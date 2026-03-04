// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecListenerConnectionPoolTcp {
  final pulumi.Input<int> maxConnections;

  /// Creates a new [GetVirtualNodeSpecListenerConnectionPoolTcp].
  /// [maxConnections] Required.
  GetVirtualNodeSpecListenerConnectionPoolTcp({required this.maxConnections});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maxConnections': maxConnections};
  }

  factory GetVirtualNodeSpecListenerConnectionPoolTcp.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNodeSpecListenerConnectionPoolTcp(
      maxConnections: pulumi.Input.fromValue(map['maxConnections'] as int),
    );
  }
}
