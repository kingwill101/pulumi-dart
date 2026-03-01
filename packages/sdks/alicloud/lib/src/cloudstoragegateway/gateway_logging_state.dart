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
    pulumi.Output<String>? gatewayId,
    pulumi.Output<String>? slsLogstore,
    pulumi.Output<String>? slsProject,
    pulumi.Output<String>? status,
  }) :
      gatewayId = pulumi.Input.asOptionalInput<String>(gatewayId),
      slsLogstore = pulumi.Input.asOptionalInput<String>(slsLogstore),
      slsProject = pulumi.Input.asOptionalInput<String>(slsProject),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      gatewayId: map['gatewayId'] == null ? null : pulumi.Output.create<String>(map['gatewayId'] as String),
      slsLogstore: map['slsLogstore'] == null ? null : pulumi.Output.create<String>(map['slsLogstore'] as String),
      slsProject: map['slsProject'] == null ? null : pulumi.Output.create<String>(map['slsProject'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

