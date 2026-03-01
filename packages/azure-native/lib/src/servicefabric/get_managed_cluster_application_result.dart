// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_upgrade_policy_response.dart';
import 'application_user_assigned_identity_response.dart';
import 'managed_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getManagedClusterApplication.
class GetManagedClusterApplicationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Azure resource identifier.
  final String id;
  /// Describes the managed identities for an Azure resource.
  final ManagedIdentityResponse? identity;
  /// Resource location depends on the parent resource.
  final String? location;
  /// List of user assigned identities for the application, each mapped to a friendly name.
  final List<ApplicationUserAssignedIdentityResponse>? managedIdentities;
  /// Azure resource name.
  final String name;
  /// List of application parameters with overridden values from their default values specified in the application manifest.
  final Map<String, String>? parameters;
  /// The current deployment or provisioning state, which only appears in the response
  final String provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Azure resource tags.
  final Map<String, String>? tags;
  /// Azure resource type.
  final String type;
  /// Describes the policy for a monitored application upgrade.
  final ApplicationUpgradePolicyResponse? upgradePolicy;
  /// The version of the application type as defined in the application manifest.
  /// This name must be the full Arm Resource ID for the referenced application type version.
  final String? version;

  /// Creates a new [GetManagedClusterApplicationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Azure resource identifier.
  /// [identity] Describes the managed identities for an Azure resource.
  /// [location] Resource location depends on the parent resource.
  /// [managedIdentities] List of user assigned identities for the application, each mapped to a friendly name.
  /// [name] Azure resource name.
  /// [parameters] List of application parameters with overridden values from their default values specified in the application manifest.
  /// [provisioningState] The current deployment or provisioning state, which only appears in the response
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Azure resource tags.
  /// [type] Azure resource type.
  /// [upgradePolicy] Describes the policy for a monitored application upgrade.
  /// [version] The version of the application type as defined in the application manifest.
  GetManagedClusterApplicationResult({
    required this.azureApiVersion,
    required this.id,
    this.identity,
    this.location,
    this.managedIdentities,
    required this.name,
    this.parameters,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
    this.upgradePolicy,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': ?location,
      'managedIdentities': ?managedIdentities == null ? null : pulumi.Input.encodeList<ApplicationUserAssignedIdentityResponse, Map<String, dynamic>>(managedIdentities!, (value) => value.toMap()),
      'name': name,
      'parameters': ?parameters,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'upgradePolicy': ?upgradePolicy == null ? null : upgradePolicy!.toMap(),
      'version': ?version,
    };
  }

  factory GetManagedClusterApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetManagedClusterApplicationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      managedIdentities: map['managedIdentities'] == null ? null : pulumi.Input.decodeList<ApplicationUserAssignedIdentityResponse>(map['managedIdentities'], (value) => ApplicationUserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      upgradePolicy: map['upgradePolicy'] == null ? null : ApplicationUpgradePolicyResponse.fromMap((map['upgradePolicy'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

