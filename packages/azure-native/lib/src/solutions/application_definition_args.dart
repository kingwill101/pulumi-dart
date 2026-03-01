// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_authorization.dart';
import 'application_definition_artifact.dart';
import 'application_deployment_policy.dart';
import 'application_lock_level.dart';
import 'application_management_policy.dart';
import 'application_notification_policy.dart';
import 'application_package_locking_policy_definition.dart';
import 'application_policy.dart';
import 'sku.dart';

/// {@template pulumi_solutions_application_definition_args_doc}
/// The set of arguments for ApplicationDefinition.
/// {@endtemplate}
/// {@macro pulumi_solutions_application_definition_args_doc}
class ApplicationDefinitionArgs {
  /// The name of the managed application definition.
  final pulumi.Input<String>? applicationDefinitionName;
  /// The collection of managed application artifacts. The portal will use the files specified as artifacts to construct the user experience of creating a managed application from a managed application definition.
  final pulumi.Input<List<ApplicationDefinitionArtifact>>? artifacts;
  /// The managed application provider authorizations.
  final pulumi.Input<List<ApplicationAuthorization>>? authorizations;
  /// The createUiDefinition json for the backing template with Microsoft.Solutions/applications resource. It can be a JObject or well-formed JSON string.
  final pulumi.Input<dynamic>? createUiDefinition;
  /// The managed application deployment policy.
  final pulumi.Input<ApplicationDeploymentPolicy>? deploymentPolicy;
  /// The managed application definition description.
  final pulumi.Input<String>? description;
  /// The managed application definition display name.
  final pulumi.Input<String>? displayName;
  /// A value indicating whether the package is enabled or not.
  final pulumi.Input<bool>? isEnabled;
  /// Resource location
  final pulumi.Input<String>? location;
  /// The managed application lock level.
  final pulumi.Input<ApplicationLockLevel> lockLevel;
  /// The managed application locking policy.
  final pulumi.Input<ApplicationPackageLockingPolicyDefinition>? lockingPolicy;
  /// The inline main template json which has resources to be provisioned. It can be a JObject or well-formed JSON string.
  final pulumi.Input<dynamic>? mainTemplate;
  /// ID of the resource that manages this resource.
  final pulumi.Input<String>? managedBy;
  /// The managed application management policy that determines publisher's access to the managed resource group.
  final pulumi.Input<ApplicationManagementPolicy>? managementPolicy;
  /// The managed application notification policy.
  final pulumi.Input<ApplicationNotificationPolicy>? notificationPolicy;
  /// The managed application definition package file Uri. Use this element
  final pulumi.Input<String>? packageFileUri;
  /// The managed application provider policies.
  final pulumi.Input<List<ApplicationPolicy>>? policies;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU of the resource.
  final pulumi.Input<Sku>? sku;
  /// The storage account id for bring your own storage scenario.
  final pulumi.Input<String>? storageAccountId;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ApplicationDefinitionArgs].
  /// [applicationDefinitionName] The name of the managed application definition.
  /// [artifacts] The collection of managed application artifacts. The portal will use the files specified as artifacts to construct the user experience of creating a managed application from a managed application definition.
  /// [authorizations] The managed application provider authorizations.
  /// [createUiDefinition] The createUiDefinition json for the backing template with Microsoft.Solutions/applications resource. It can be a JObject or well-formed JSON string.
  /// [deploymentPolicy] The managed application deployment policy.
  /// [description] The managed application definition description.
  /// [displayName] The managed application definition display name.
  /// [isEnabled] A value indicating whether the package is enabled or not.
  /// [location] Resource location
  /// [lockLevel] The managed application lock level.
  /// [lockingPolicy] The managed application locking policy.
  /// [mainTemplate] The inline main template json which has resources to be provisioned. It can be a JObject or well-formed JSON string.
  /// [managedBy] ID of the resource that manages this resource.
  /// [managementPolicy] The managed application management policy that determines publisher's access to the managed resource group.
  /// [notificationPolicy] The managed application notification policy.
  /// [packageFileUri] The managed application definition package file Uri. Use this element
  /// [policies] The managed application provider policies.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The SKU of the resource.
  /// [storageAccountId] The storage account id for bring your own storage scenario.
  /// [tags] Resource tags
  ApplicationDefinitionArgs({
    String? applicationDefinitionName,
    List<ApplicationDefinitionArtifact>? artifacts,
    List<ApplicationAuthorization>? authorizations,
    dynamic createUiDefinition,
    ApplicationDeploymentPolicy? deploymentPolicy,
    String? description,
    String? displayName,
    bool? isEnabled,
    String? location,
    required ApplicationLockLevel lockLevel,
    ApplicationPackageLockingPolicyDefinition? lockingPolicy,
    dynamic mainTemplate,
    String? managedBy,
    ApplicationManagementPolicy? managementPolicy,
    ApplicationNotificationPolicy? notificationPolicy,
    String? packageFileUri,
    List<ApplicationPolicy>? policies,
    required String resourceGroupName,
    Sku? sku,
    String? storageAccountId,
    Map<String, String>? tags,
  }) :
      applicationDefinitionName = pulumi.Input.asOptionalInput<String>(applicationDefinitionName),
      artifacts = pulumi.Input.asOptionalInput<List<ApplicationDefinitionArtifact>>(artifacts),
      authorizations = pulumi.Input.asOptionalInput<List<ApplicationAuthorization>>(authorizations),
      createUiDefinition = pulumi.Input.asOptionalInput<dynamic>(createUiDefinition),
      deploymentPolicy = pulumi.Input.asOptionalInput<ApplicationDeploymentPolicy>(deploymentPolicy),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      isEnabled = pulumi.Input.asOptionalInput<bool>(isEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      lockLevel = pulumi.Input.asInput<ApplicationLockLevel>(lockLevel),
      lockingPolicy = pulumi.Input.asOptionalInput<ApplicationPackageLockingPolicyDefinition>(lockingPolicy),
      mainTemplate = pulumi.Input.asOptionalInput<dynamic>(mainTemplate),
      managedBy = pulumi.Input.asOptionalInput<String>(managedBy),
      managementPolicy = pulumi.Input.asOptionalInput<ApplicationManagementPolicy>(managementPolicy),
      notificationPolicy = pulumi.Input.asOptionalInput<ApplicationNotificationPolicy>(notificationPolicy),
      packageFileUri = pulumi.Input.asOptionalInput<String>(packageFileUri),
      policies = pulumi.Input.asOptionalInput<List<ApplicationPolicy>>(policies),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      storageAccountId = pulumi.Input.asOptionalInput<String>(storageAccountId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationDefinitionName': ?applicationDefinitionName,
      'artifacts': ?pulumi.Input.mapOptionalInputValue<List<ApplicationDefinitionArtifact>, List<Map<String, dynamic>>>(artifacts, (value) => pulumi.Input.encodeList<ApplicationDefinitionArtifact, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authorizations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationAuthorization>, List<Map<String, dynamic>>>(authorizations, (value) => pulumi.Input.encodeList<ApplicationAuthorization, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createUiDefinition': ?createUiDefinition,
      'deploymentPolicy': ?pulumi.Input.mapOptionalInputValue<ApplicationDeploymentPolicy, Map<String, dynamic>>(deploymentPolicy, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'isEnabled': ?isEnabled,
      'location': ?location,
      'lockLevel': pulumi.Input.mapInputValue<ApplicationLockLevel, String>(lockLevel, (value) => value.value),
      'lockingPolicy': ?pulumi.Input.mapOptionalInputValue<ApplicationPackageLockingPolicyDefinition, Map<String, dynamic>>(lockingPolicy, (value) => value.toMap()),
      'mainTemplate': ?mainTemplate,
      'managedBy': ?managedBy,
      'managementPolicy': ?pulumi.Input.mapOptionalInputValue<ApplicationManagementPolicy, Map<String, dynamic>>(managementPolicy, (value) => value.toMap()),
      'notificationPolicy': ?pulumi.Input.mapOptionalInputValue<ApplicationNotificationPolicy, Map<String, dynamic>>(notificationPolicy, (value) => value.toMap()),
      'packageFileUri': ?packageFileUri,
      'policies': ?pulumi.Input.mapOptionalInputValue<List<ApplicationPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<ApplicationPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'storageAccountId': ?storageAccountId,
      'tags': ?tags,
    };
  }

  factory ApplicationDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationDefinitionArgs(
      applicationDefinitionName: map['applicationDefinitionName'] == null ? null : map['applicationDefinitionName'] as String,
      artifacts: map['artifacts'] == null ? null : pulumi.Input.decodeList<ApplicationDefinitionArtifact>(map['artifacts'], (value) => ApplicationDefinitionArtifact.fromMap((value as Map).cast<String, dynamic>())),
      authorizations: map['authorizations'] == null ? null : pulumi.Input.decodeList<ApplicationAuthorization>(map['authorizations'], (value) => ApplicationAuthorization.fromMap((value as Map).cast<String, dynamic>())),
      createUiDefinition: map['createUiDefinition'] == null ? null : map['createUiDefinition'],
      deploymentPolicy: map['deploymentPolicy'] == null ? null : ApplicationDeploymentPolicy.fromMap((map['deploymentPolicy'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      isEnabled: map['isEnabled'] == null ? null : map['isEnabled'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      lockLevel: ApplicationLockLevel.fromValue(map['lockLevel'] as String),
      lockingPolicy: map['lockingPolicy'] == null ? null : ApplicationPackageLockingPolicyDefinition.fromMap((map['lockingPolicy'] as Map).cast<String, dynamic>()),
      mainTemplate: map['mainTemplate'] == null ? null : map['mainTemplate'],
      managedBy: map['managedBy'] == null ? null : map['managedBy'] as String,
      managementPolicy: map['managementPolicy'] == null ? null : ApplicationManagementPolicy.fromMap((map['managementPolicy'] as Map).cast<String, dynamic>()),
      notificationPolicy: map['notificationPolicy'] == null ? null : ApplicationNotificationPolicy.fromMap((map['notificationPolicy'] as Map).cast<String, dynamic>()),
      packageFileUri: map['packageFileUri'] == null ? null : map['packageFileUri'] as String,
      policies: map['policies'] == null ? null : pulumi.Input.decodeList<ApplicationPolicy>(map['policies'], (value) => ApplicationPolicy.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      sku: map['sku'] == null ? null : Sku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      storageAccountId: map['storageAccountId'] == null ? null : map['storageAccountId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

