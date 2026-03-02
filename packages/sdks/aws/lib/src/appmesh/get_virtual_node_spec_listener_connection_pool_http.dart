// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecListenerConnectionPoolHttp {
  final pulumi.Input<int> maxConnections;
  final pulumi.Input<int> maxPendingRequests;

  /// Creates a new [GetVirtualNodeSpecListenerConnectionPoolHttp].
  /// [maxConnections] Required.
  /// [maxPendingRequests] Required.
  GetVirtualNodeSpecListenerConnectionPoolHttp({
    required this.maxConnections,
    required this.maxPendingRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConnections': maxConnections,
      'maxPendingRequests': maxPendingRequests,
    };
  }

  factory GetVirtualNodeSpecListenerConnectionPoolHttp.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerConnectionPoolHttp(
      maxConnections: (map['maxConnections'] as int).input(),
      maxPendingRequests: (map['maxPendingRequests'] as int).input(),
    );
  }
}

