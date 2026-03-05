// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption.dart';
import 'fhir_service_acr_configuration.dart';
import 'fhir_service_authentication_configuration.dart';
import 'fhir_service_cors_configuration.dart';
import 'fhir_service_export_configuration.dart';
import 'fhir_service_import_configuration.dart';
import 'implementation_guides_configuration.dart';
import 'resource_version_policy_configuration.dart';
import 'service_managed_identity_identity.dart';

/// {@template pulumi_healthcareapis_fhir_service_args_doc}
/// The set of arguments for FhirService.
/// {@endtemplate}
/// {@macro pulumi_healthcareapis_fhir_service_args_doc}
class FhirServiceArgs {
  /// Fhir Service Azure container registry configuration.
  final pulumi.Input<FhirServiceAcrConfiguration>? acrConfiguration;
  /// Fhir Service authentication configuration.
  final pulumi.Input<FhirServiceAuthenticationConfiguration>? authenticationConfiguration;
  /// Fhir Service Cors configuration.
  final pulumi.Input<FhirServiceCorsConfiguration>? corsConfiguration;
  /// The encryption settings of the FHIR service
  final pulumi.Input<Encryption>? encryption;
  /// Fhir Service export configuration.
  final pulumi.Input<FhirServiceExportConfiguration>? exportConfiguration;
  /// The name of FHIR Service resource.
  final pulumi.Input<String>? fhirServiceName;
  /// Setting indicating whether the service has a managed identity associated with it.
  final pulumi.Input<ServiceManagedIdentityIdentity>? identity;
  /// Implementation Guides configuration.
  final pulumi.Input<ImplementationGuidesConfiguration>? implementationGuidesConfiguration;
  /// Fhir Service import configuration.
  final pulumi.Input<FhirServiceImportConfiguration>? importConfiguration;
  /// The kind of the service.
  final pulumi.Input<String>? kind;
  /// The resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group that contains the service instance.
  final pulumi.Input<String> resourceGroupName;
  /// Determines tracking of history for resources.
  final pulumi.Input<ResourceVersionPolicyConfiguration>? resourceVersionPolicyConfiguration;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of workspace resource.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [FhirServiceArgs].
  /// [acrConfiguration] Fhir Service Azure container registry configuration.
  /// [authenticationConfiguration] Fhir Service authentication configuration.
  /// [corsConfiguration] Fhir Service Cors configuration.
  /// [encryption] The encryption settings of the FHIR service
  /// [exportConfiguration] Fhir Service export configuration.
  /// [fhirServiceName] The name of FHIR Service resource.
  /// [identity] Setting indicating whether the service has a managed identity associated with it.
  /// [implementationGuidesConfiguration] Implementation Guides configuration.
  /// [importConfiguration] Fhir Service import configuration.
  /// [kind] The kind of the service.
  /// [location] The resource location.
  /// [resourceGroupName] The name of the resource group that contains the service instance.
  /// [resourceVersionPolicyConfiguration] Determines tracking of history for resources.
  /// [tags] Resource tags.
  /// [workspaceName] The name of workspace resource.
  FhirServiceArgs({
    this.acrConfiguration,
    this.authenticationConfiguration,
    this.corsConfiguration,
    this.encryption,
    this.exportConfiguration,
    this.fhirServiceName,
    this.identity,
    this.implementationGuidesConfiguration,
    this.importConfiguration,
    this.kind,
    this.location,
    required this.resourceGroupName,
    this.resourceVersionPolicyConfiguration,
    this.tags,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acrConfiguration': ?pulumi.Input.mapOptionalInputValue<FhirServiceAcrConfiguration, Map<String, dynamic>>(acrConfiguration, (value) => value.toMap()),
      'authenticationConfiguration': ?pulumi.Input.mapOptionalInputValue<FhirServiceAuthenticationConfiguration, Map<String, dynamic>>(authenticationConfiguration, (value) => value.toMap()),
      'corsConfiguration': ?pulumi.Input.mapOptionalInputValue<FhirServiceCorsConfiguration, Map<String, dynamic>>(corsConfiguration, (value) => value.toMap()),
      'encryption': ?pulumi.Input.mapOptionalInputValue<Encryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'exportConfiguration': ?pulumi.Input.mapOptionalInputValue<FhirServiceExportConfiguration, Map<String, dynamic>>(exportConfiguration, (value) => value.toMap()),
      'fhirServiceName': ?fhirServiceName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ServiceManagedIdentityIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'implementationGuidesConfiguration': ?pulumi.Input.mapOptionalInputValue<ImplementationGuidesConfiguration, Map<String, dynamic>>(implementationGuidesConfiguration, (value) => value.toMap()),
      'importConfiguration': ?pulumi.Input.mapOptionalInputValue<FhirServiceImportConfiguration, Map<String, dynamic>>(importConfiguration, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'resourceVersionPolicyConfiguration': ?pulumi.Input.mapOptionalInputValue<ResourceVersionPolicyConfiguration, Map<String, dynamic>>(resourceVersionPolicyConfiguration, (value) => value.toMap()),
      'tags': ?tags,
      'workspaceName': workspaceName,
    };
  }

  factory FhirServiceArgs.fromMap(Map<String, dynamic> map) {
    return FhirServiceArgs(
      acrConfiguration: (() { final guardedValue = map['acrConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FhirServiceAcrConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authenticationConfiguration: (() { final guardedValue = map['authenticationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FhirServiceAuthenticationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      corsConfiguration: (() { final guardedValue = map['corsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FhirServiceCorsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Encryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      exportConfiguration: (() { final guardedValue = map['exportConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FhirServiceExportConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fhirServiceName: (() { final guardedValue = map['fhirServiceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceManagedIdentityIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      implementationGuidesConfiguration: (() { final guardedValue = map['implementationGuidesConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImplementationGuidesConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      importConfiguration: (() { final guardedValue = map['importConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FhirServiceImportConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceVersionPolicyConfiguration: (() { final guardedValue = map['resourceVersionPolicyConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceVersionPolicyConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

