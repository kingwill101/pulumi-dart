// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess {
  final pulumi.Input<String> type;

  /// Creates a new [GetClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess].
  /// [type] Required.
  GetClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type};
  }

  factory GetClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
