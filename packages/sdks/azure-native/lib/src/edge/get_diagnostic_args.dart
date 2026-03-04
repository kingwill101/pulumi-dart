// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_get_diagnostic_args_doc}
/// Arguments for getDiagnostic.
/// {@endtemplate}
/// {@macro pulumi_edge_get_diagnostic_args_doc}
class GetDiagnosticArgs {
  /// Name of Diagnostic.
  final pulumi.Input<String> diagnosticName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDiagnosticArgs].
  /// [diagnosticName] Name of Diagnostic.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDiagnosticArgs({
    required this.diagnosticName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diagnosticName': diagnosticName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDiagnosticArgs.fromMap(Map<String, dynamic> map) {
    return GetDiagnosticArgs(
      diagnosticName: pulumi.Input.fromValue(map['diagnosticName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
