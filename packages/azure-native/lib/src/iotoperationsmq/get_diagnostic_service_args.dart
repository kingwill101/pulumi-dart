// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperationsmq_get_diagnostic_service_args_doc}
/// Arguments for getDiagnosticService.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsmq_get_diagnostic_service_args_doc}
class GetDiagnosticServiceArgs {
  /// Name of MQ diagnostic resource
  final pulumi.Input<String> diagnosticServiceName;
  /// Name of MQ resource
  final pulumi.Input<String> mqName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDiagnosticServiceArgs].
  /// [diagnosticServiceName] Name of MQ diagnostic resource
  /// [mqName] Name of MQ resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDiagnosticServiceArgs({
    required String diagnosticServiceName,
    required String mqName,
    required String resourceGroupName,
  }) :
      diagnosticServiceName = pulumi.Input.asInput<String>(diagnosticServiceName),
      mqName = pulumi.Input.asInput<String>(mqName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diagnosticServiceName': diagnosticServiceName,
      'mqName': mqName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDiagnosticServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetDiagnosticServiceArgs(
      diagnosticServiceName: map['diagnosticServiceName'] as String,
      mqName: map['mqName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

