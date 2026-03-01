// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_permission_timeouts.dart';

/// Input properties used for looking up and filtering NetworkInterfacePermission resources.
class NetworkInterfacePermissionState {
  /// The Amazon Web Services account ID.
  final pulumi.Input<String>? awsAccountId;
  /// The ID of the network interface.
  final pulumi.Input<String>? networkInterfaceId;
  /// ENI permission ID.
  final pulumi.Input<String>? networkInterfacePermissionId;
  /// The type of permission to grant. Valid values are `INSTANCE-ATTACH` or `EIP-ASSOCIATE`.
  final pulumi.Input<String>? permission;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<NetworkInterfacePermissionTimeouts>? timeouts;

  /// Creates a new [NetworkInterfacePermissionState].
  /// [awsAccountId] The Amazon Web Services account ID.
  /// [networkInterfaceId] The ID of the network interface.
  /// [networkInterfacePermissionId] ENI permission ID.
  /// [permission] The type of permission to grant. Valid values are `INSTANCE-ATTACH` or `EIP-ASSOCIATE`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  NetworkInterfacePermissionState({
    pulumi.Output<String>? awsAccountId,
    pulumi.Output<String>? networkInterfaceId,
    pulumi.Output<String>? networkInterfacePermissionId,
    pulumi.Output<String>? permission,
    pulumi.Output<String>? region,
    pulumi.Output<NetworkInterfacePermissionTimeouts>? timeouts,
  }) :
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      networkInterfaceId = pulumi.Input.asOptionalInput<String>(networkInterfaceId),
      networkInterfacePermissionId = pulumi.Input.asOptionalInput<String>(networkInterfacePermissionId),
      permission = pulumi.Input.asOptionalInput<String>(permission),
      region = pulumi.Input.asOptionalInput<String>(region),
      timeouts = pulumi.Input.asOptionalInput<NetworkInterfacePermissionTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'networkInterfaceId': ?networkInterfaceId,
      'networkInterfacePermissionId': ?networkInterfacePermissionId,
      'permission': ?permission,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<NetworkInterfacePermissionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory NetworkInterfacePermissionState.fromMap(Map<String, dynamic> map) {
    return NetworkInterfacePermissionState(
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : pulumi.Output.create<String>(map['networkInterfaceId'] as String),
      networkInterfacePermissionId: map['networkInterfacePermissionId'] == null ? null : pulumi.Output.create<String>(map['networkInterfacePermissionId'] as String),
      permission: map['permission'] == null ? null : pulumi.Output.create<String>(map['permission'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<NetworkInterfacePermissionTimeouts>(NetworkInterfacePermissionTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

