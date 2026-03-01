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
    pulumi.Output<FhirServiceAcrConfiguration>? acrConfiguration,
    pulumi.Output<FhirServiceAuthenticationConfiguration>? authenticationConfiguration,
    pulumi.Output<FhirServiceCorsConfiguration>? corsConfiguration,
    pulumi.Output<Encryption>? encryption,
    pulumi.Output<FhirServiceExportConfiguration>? exportConfiguration,
    pulumi.Output<String>? fhirServiceName,
    pulumi.Output<ServiceManagedIdentityIdentity>? identity,
    pulumi.Output<ImplementationGuidesConfiguration>? implementationGuidesConfiguration,
    pulumi.Output<FhirServiceImportConfiguration>? importConfiguration,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<ResourceVersionPolicyConfiguration>? resourceVersionPolicyConfiguration,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> workspaceName,
  }) :
      acrConfiguration = pulumi.Input.asOptionalInput<FhirServiceAcrConfiguration>(acrConfiguration),
      authenticationConfiguration = pulumi.Input.asOptionalInput<FhirServiceAuthenticationConfiguration>(authenticationConfiguration),
      corsConfiguration = pulumi.Input.asOptionalInput<FhirServiceCorsConfiguration>(corsConfiguration),
      encryption = pulumi.Input.asOptionalInput<Encryption>(encryption),
      exportConfiguration = pulumi.Input.asOptionalInput<FhirServiceExportConfiguration>(exportConfiguration),
      fhirServiceName = pulumi.Input.asOptionalInput<String>(fhirServiceName),
      identity = pulumi.Input.asOptionalInput<ServiceManagedIdentityIdentity>(identity),
      implementationGuidesConfiguration = pulumi.Input.asOptionalInput<ImplementationGuidesConfiguration>(implementationGuidesConfiguration),
      importConfiguration = pulumi.Input.asOptionalInput<FhirServiceImportConfiguration>(importConfiguration),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceVersionPolicyConfiguration = pulumi.Input.asOptionalInput<ResourceVersionPolicyConfiguration>(resourceVersionPolicyConfiguration),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      acrConfiguration: map['acrConfiguration'] == null ? null : pulumi.Output.create<FhirServiceAcrConfiguration>(FhirServiceAcrConfiguration.fromMap((map['acrConfiguration'] as Map).cast<String, dynamic>())),
      authenticationConfiguration: map['authenticationConfiguration'] == null ? null : pulumi.Output.create<FhirServiceAuthenticationConfiguration>(FhirServiceAuthenticationConfiguration.fromMap((map['authenticationConfiguration'] as Map).cast<String, dynamic>())),
      corsConfiguration: map['corsConfiguration'] == null ? null : pulumi.Output.create<FhirServiceCorsConfiguration>(FhirServiceCorsConfiguration.fromMap((map['corsConfiguration'] as Map).cast<String, dynamic>())),
      encryption: map['encryption'] == null ? null : pulumi.Output.create<Encryption>(Encryption.fromMap((map['encryption'] as Map).cast<String, dynamic>())),
      exportConfiguration: map['exportConfiguration'] == null ? null : pulumi.Output.create<FhirServiceExportConfiguration>(FhirServiceExportConfiguration.fromMap((map['exportConfiguration'] as Map).cast<String, dynamic>())),
      fhirServiceName: map['fhirServiceName'] == null ? null : pulumi.Output.create<String>(map['fhirServiceName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ServiceManagedIdentityIdentity>(ServiceManagedIdentityIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      implementationGuidesConfiguration: map['implementationGuidesConfiguration'] == null ? null : pulumi.Output.create<ImplementationGuidesConfiguration>(ImplementationGuidesConfiguration.fromMap((map['implementationGuidesConfiguration'] as Map).cast<String, dynamic>())),
      importConfiguration: map['importConfiguration'] == null ? null : pulumi.Output.create<FhirServiceImportConfiguration>(FhirServiceImportConfiguration.fromMap((map['importConfiguration'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceVersionPolicyConfiguration: map['resourceVersionPolicyConfiguration'] == null ? null : pulumi.Output.create<ResourceVersionPolicyConfiguration>(ResourceVersionPolicyConfiguration.fromMap((map['resourceVersionPolicyConfiguration'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

