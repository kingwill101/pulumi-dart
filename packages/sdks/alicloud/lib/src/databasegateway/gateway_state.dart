// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Gateway resources.
class GatewayState {
  /// The description of Gateway.
  final pulumi.Input<String>? gatewayDesc;
  /// The name of the Gateway.
  final pulumi.Input<String>? gatewayName;
  /// The status of gateway. Valid values: `EXCEPTION`, `NEW`, `RUNNING`, `STOPPED`.
  final pulumi.Input<String>? status;

  /// Creates a new [GatewayState].
  /// [gatewayDesc] The description of Gateway.
  /// [gatewayName] The name of the Gateway.
  /// [status] The status of gateway. Valid values: `EXCEPTION`, `NEW`, `RUNNING`, `STOPPED`.
  GatewayState({
    this.gatewayDesc,
    this.gatewayName,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayDesc': ?gatewayDesc,
      'gatewayName': ?gatewayName,
      'status': ?status,
    };
  }

  factory GatewayState.fromMap(Map<String, dynamic> map) {
    return GatewayState(
      gatewayDesc: (() { final guardedValue = map['gatewayDesc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayName: (() { final guardedValue = map['gatewayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

