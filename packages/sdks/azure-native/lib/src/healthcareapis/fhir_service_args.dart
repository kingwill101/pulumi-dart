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
      acrConfiguration: map['acrConfiguration'] == null ? null : (FhirServiceAcrConfiguration.fromMap((map['acrConfiguration'] as Map).cast<String, dynamic>())).input(),
      authenticationConfiguration: map['authenticationConfiguration'] == null ? null : (FhirServiceAuthenticationConfiguration.fromMap((map['authenticationConfiguration'] as Map).cast<String, dynamic>())).input(),
      corsConfiguration: map['corsConfiguration'] == null ? null : (FhirServiceCorsConfiguration.fromMap((map['corsConfiguration'] as Map).cast<String, dynamic>())).input(),
      encryption: map['encryption'] == null ? null : (Encryption.fromMap((map['encryption'] as Map).cast<String, dynamic>())).input(),
      exportConfiguration: map['exportConfiguration'] == null ? null : (FhirServiceExportConfiguration.fromMap((map['exportConfiguration'] as Map).cast<String, dynamic>())).input(),
      fhirServiceName: map['fhirServiceName'] == null ? null : (map['fhirServiceName'] as String).input(),
      identity: map['identity'] == null ? null : (ServiceManagedIdentityIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      implementationGuidesConfiguration: map['implementationGuidesConfiguration'] == null ? null : (ImplementationGuidesConfiguration.fromMap((map['implementationGuidesConfiguration'] as Map).cast<String, dynamic>())).input(),
      importConfiguration: map['importConfiguration'] == null ? null : (FhirServiceImportConfiguration.fromMap((map['importConfiguration'] as Map).cast<String, dynamic>())).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceVersionPolicyConfiguration: map['resourceVersionPolicyConfiguration'] == null ? null : (ResourceVersionPolicyConfiguration.fromMap((map['resourceVersionPolicyConfiguration'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

