// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PublicEndpoint resources.
class PublicEndpointState {
  /// The public network connection string prefix of the instance.
  final pulumi.Input<String>? connectionStringPrefix;

  /// The cluster ID.
  final pulumi.Input<String>? dbInstanceId;

  /// Network type of the connection address. Valid values:
  /// - Public: Public network.
  final pulumi.Input<String>? netType;

  /// Creates a new [PublicEndpointState].
  /// [connectionStringPrefix] The public network connection string prefix of the instance.
  /// [dbInstanceId] The cluster ID.
  /// [netType] Network type of the connection address. Valid values:
  PublicEndpointState({
    this.connectionStringPrefix,
    this.dbInstanceId,
    this.netType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionStringPrefix': ?connectionStringPrefix,
      'dbInstanceId': ?dbInstanceId,
      'netType': ?netType,
    };
  }

  factory PublicEndpointState.fromMap(Map<String, dynamic> map) {
    return PublicEndpointState(
      connectionStringPrefix: (() {
        final guardedValue = map['connectionStringPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbInstanceId: (() {
        final guardedValue = map['dbInstanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      netType: (() {
        final guardedValue = map['netType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
