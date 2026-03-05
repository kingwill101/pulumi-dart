// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecListenerConnectionPoolGrpc {
  final pulumi.Input<int> maxRequests;

  /// Creates a new [GetVirtualNodeSpecListenerConnectionPoolGrpc].
  /// [maxRequests] Required.
  GetVirtualNodeSpecListenerConnectionPoolGrpc({
    required this.maxRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRequests': maxRequests,
    };
  }

  factory GetVirtualNodeSpecListenerConnectionPoolGrpc.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerConnectionPoolGrpc(
      maxRequests: pulumi.Input.fromValue(map['maxRequests'] as int),
    );
  }
}

