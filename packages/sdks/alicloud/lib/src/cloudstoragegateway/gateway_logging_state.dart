// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GatewayLogging resources.
class GatewayLoggingState {
  /// The ID of the Gateway.
  final pulumi.Input<String>? gatewayId;
  /// The name of the Log Store.
  final pulumi.Input<String>? slsLogstore;
  /// The name of the Project.
  final pulumi.Input<String>? slsProject;
  /// The status of the resource. Valid values: `Enabled`, `Disable`.
  final pulumi.Input<String>? status;

  /// Creates a new [GatewayLoggingState].
  /// [gatewayId] The ID of the Gateway.
  /// [slsLogstore] The name of the Log Store.
  /// [slsProject] The name of the Project.
  /// [status] The status of the resource. Valid values: `Enabled`, `Disable`.
  GatewayLoggingState({
    this.gatewayId,
    this.slsLogstore,
    this.slsProject,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayId': ?gatewayId,
      'slsLogstore': ?slsLogstore,
      'slsProject': ?slsProject,
      'status': ?status,
    };
  }

  factory GatewayLoggingState.fromMap(Map<String, dynamic> map) {
    return GatewayLoggingState(
      gatewayId: map['gatewayId'] == null ? null : (map['gatewayId'] as String).input(),
      slsLogstore: map['slsLogstore'] == null ? null : (map['slsLogstore'] as String).input(),
      slsProject: map['slsProject'] == null ? null : (map['slsProject'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

