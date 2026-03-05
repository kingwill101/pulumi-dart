// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecListenerConnectionPoolHttp2 {
  final pulumi.Input<int> maxRequests;

  /// Creates a new [GetVirtualNodeSpecListenerConnectionPoolHttp2].
  /// [maxRequests] Required.
  GetVirtualNodeSpecListenerConnectionPoolHttp2({
    required this.maxRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRequests': maxRequests,
    };
  }

  factory GetVirtualNodeSpecListenerConnectionPoolHttp2.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerConnectionPoolHttp2(
      maxRequests: pulumi.Input.fromValue(map['maxRequests'] as int),
    );
  }
}

