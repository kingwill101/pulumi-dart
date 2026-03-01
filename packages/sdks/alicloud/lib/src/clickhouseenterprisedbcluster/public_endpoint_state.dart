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
    pulumi.Output<String>? connectionStringPrefix,
    pulumi.Output<String>? dbInstanceId,
    pulumi.Output<String>? netType,
  }) :
      connectionStringPrefix = pulumi.Input.asOptionalInput<String>(connectionStringPrefix),
      dbInstanceId = pulumi.Input.asOptionalInput<String>(dbInstanceId),
      netType = pulumi.Input.asOptionalInput<String>(netType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionStringPrefix': ?connectionStringPrefix,
      'dbInstanceId': ?dbInstanceId,
      'netType': ?netType,
    };
  }

  factory PublicEndpointState.fromMap(Map<String, dynamic> map) {
    return PublicEndpointState(
      connectionStringPrefix: map['connectionStringPrefix'] == null ? null : pulumi.Output.create<String>(map['connectionStringPrefix'] as String),
      dbInstanceId: map['dbInstanceId'] == null ? null : pulumi.Output.create<String>(map['dbInstanceId'] as String),
      netType: map['netType'] == null ? null : pulumi.Output.create<String>(map['netType'] as String),
    );
  }
}

