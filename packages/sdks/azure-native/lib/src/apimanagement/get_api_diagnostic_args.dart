// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_api_diagnostic_args_doc}
/// Arguments for getApiDiagnostic.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_api_diagnostic_args_doc}
class GetApiDiagnosticArgs {
  /// API identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> apiId;
  /// Diagnostic identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> diagnosticId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetApiDiagnosticArgs].
  /// [apiId] API identifier. Must be unique in the current API Management service instance.
  /// [diagnosticId] Diagnostic identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GetApiDiagnosticArgs({
    required this.apiId,
    required this.diagnosticId,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'diagnosticId': diagnosticId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetApiDiagnosticArgs.fromMap(Map<String, dynamic> map) {
    return GetApiDiagnosticArgs(
      apiId: (map['apiId'] as String).input(),
      diagnosticId: (map['diagnosticId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

