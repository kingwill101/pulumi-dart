// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudstoragegateway_gateway_logging_gateway_logging_args_doc}
/// The set of arguments for GatewayLogging.
/// {@endtemplate}
/// {@macro pulumi_cloudstoragegateway_gateway_logging_gateway_logging_args_doc}
class GatewayLoggingArgs {
  /// The ID of the Gateway.
  final pulumi.Input<String> gatewayId;
  /// The name of the Log Store.
  final pulumi.Input<String> slsLogstore;
  /// The name of the Project.
  final pulumi.Input<String> slsProject;
  /// The status of the resource. Valid values: `Enabled`, `Disable`.
  final pulumi.Input<String>? status;

  /// Creates a new [GatewayLoggingArgs].
  /// [gatewayId] The ID of the Gateway.
  /// [slsLogstore] The name of the Log Store.
  /// [slsProject] The name of the Project.
  /// [status] The status of the resource. Valid values: `Enabled`, `Disable`.
  GatewayLoggingArgs({
    required String gatewayId,
    required String slsLogstore,
    required String slsProject,
    String? status,
  }) :
      gatewayId = pulumi.Input.asInput<String>(gatewayId),
      slsLogstore = pulumi.Input.asInput<String>(slsLogstore),
      slsProject = pulumi.Input.asInput<String>(slsProject),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayId': gatewayId,
      'slsLogstore': slsLogstore,
      'slsProject': slsProject,
      'status': ?status,
    };
  }

  factory GatewayLoggingArgs.fromMap(Map<String, dynamic> map) {
    return GatewayLoggingArgs(
      gatewayId: map['gatewayId'] as String,
      slsLogstore: map['slsLogstore'] as String,
      slsProject: map['slsProject'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

