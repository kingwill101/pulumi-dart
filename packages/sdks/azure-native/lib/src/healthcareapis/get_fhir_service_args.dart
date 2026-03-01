// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcareapis_get_fhir_service_args_doc}
/// Arguments for getFhirService.
/// {@endtemplate}
/// {@macro pulumi_healthcareapis_get_fhir_service_args_doc}
class GetFhirServiceArgs {
  /// The name of FHIR Service resource.
  final pulumi.Input<String> fhirServiceName;
  /// The name of the resource group that contains the service instance.
  final pulumi.Input<String> resourceGroupName;
  /// The name of workspace resource.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetFhirServiceArgs].
  /// [fhirServiceName] The name of FHIR Service resource.
  /// [resourceGroupName] The name of the resource group that contains the service instance.
  /// [workspaceName] The name of workspace resource.
  GetFhirServiceArgs({
    required pulumi.Output<String> fhirServiceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      fhirServiceName = pulumi.Input.asInput<String>(fhirServiceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fhirServiceName': fhirServiceName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetFhirServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetFhirServiceArgs(
      fhirServiceName: pulumi.Output.create<String>(map['fhirServiceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

