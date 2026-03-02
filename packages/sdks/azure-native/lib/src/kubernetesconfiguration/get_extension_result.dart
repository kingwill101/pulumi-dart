// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';
import 'extension_response_aks_assigned_identity.dart';
import 'extension_status_response.dart';
import 'identity_response.dart';
import 'plan_response.dart';
import 'scope_response.dart';
import 'system_data_response.dart';

/// Result data returned by getExtension.
class GetExtensionResult {
  /// Identity of the Extension resource in an AKS cluster
  final ExtensionResponseAksAssignedIdentity? aksAssignedIdentity;
  /// Flag to note if this extension participates in auto upgrade of minor version, or not.
  final bool? autoUpgradeMinorVersion;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Configuration settings that are sensitive, as name-value pairs for configuring this extension.
  final Map<String, String>? configurationProtectedSettings;
  /// Configuration settings, as name-value pairs for configuring this extension.
  final Map<String, String>? configurationSettings;
  /// Currently installed version of the extension.
  final String currentVersion;
  /// Custom Location settings properties.
  final Map<String, String> customLocationSettings;
  /// Error information from the Agent - e.g. errors during installation.
  final ErrorDetailResponse errorInfo;
  /// Type of the Extension, of which this resource is an instance of.  It must be one of the Extension Types registered with Microsoft.KubernetesConfiguration by the Extension publisher.
  final String? extensionType;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Identity of the Extension resource
  final IdentityResponse? identity;
  /// Flag to note if this extension is a system extension
  final bool isSystemExtension;
  /// The name of the resource
  final String name;
  /// Uri of the Helm package
  final String packageUri;
  /// The plan information.
  final PlanResponse? plan;
  /// Status of installation of this extension.
  final String provisioningState;
  /// ReleaseTrain this extension participates in for auto-upgrade (e.g. Stable, Preview, etc.) - only if autoUpgradeMinorVersion is 'true'.
  final String? releaseTrain;
  /// Scope at which the extension is installed.
  final ScopeResponse? scope;
  /// Status from this extension.
  final List<ExtensionStatusResponse>? statuses;
  /// Top level metadata https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/common-api-contracts.md#system-metadata-for-all-azure-resources
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// User-specified version of the extension for this extension to 'pin'. To use 'version', autoUpgradeMinorVersion must be 'false'.
  final String? version;

  /// Creates a new [GetExtensionResult].
  /// [aksAssignedIdentity] Identity of the Extension resource in an AKS cluster
  /// [autoUpgradeMinorVersion] Flag to note if this extension participates in auto upgrade of minor version, or not.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configurationProtectedSettings] Configuration settings that are sensitive, as name-value pairs for configuring this extension.
  /// [configurationSettings] Configuration settings, as name-value pairs for configuring this extension.
  /// [currentVersion] Currently installed version of the extension.
  /// [customLocationSettings] Custom Location settings properties.
  /// [errorInfo] Error information from the Agent - e.g. errors during installation.
  /// [extensionType] Type of the Extension, of which this resource is an instance of.  It must be one of the Extension Types registered with Microsoft.KubernetesConfiguration by the Extension publisher.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] Identity of the Extension resource
  /// [isSystemExtension] Flag to note if this extension is a system extension
  /// [name] The name of the resource
  /// [packageUri] Uri of the Helm package
  /// [plan] The plan information.
  /// [provisioningState] Status of installation of this extension.
  /// [releaseTrain] ReleaseTrain this extension participates in for auto-upgrade (e.g. Stable, Preview, etc.) - only if autoUpgradeMinorVersion is 'true'.
  /// [scope] Scope at which the extension is installed.
  /// [statuses] Status from this extension.
  /// [systemData] Top level metadata https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/common-api-contracts.md#system-metadata-for-all-azure-resources
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] User-specified version of the extension for this extension to 'pin'. To use 'version', autoUpgradeMinorVersion must be 'false'.
  GetExtensionResult({
    this.aksAssignedIdentity,
    this.autoUpgradeMinorVersion,
    required this.azureApiVersion,
    this.configurationProtectedSettings,
    this.configurationSettings,
    required this.currentVersion,
    required this.customLocationSettings,
    required this.errorInfo,
    this.extensionType,
    required this.id,
    this.identity,
    required this.isSystemExtension,
    required this.name,
    required this.packageUri,
    this.plan,
    required this.provisioningState,
    this.releaseTrain,
    this.scope,
    this.statuses,
    required this.systemData,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aksAssignedIdentity': ?aksAssignedIdentity == null ? null : aksAssignedIdentity!.toMap(),
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'azureApiVersion': azureApiVersion,
      'configurationProtectedSettings': ?configurationProtectedSettings,
      'configurationSettings': ?configurationSettings,
      'currentVersion': currentVersion,
      'customLocationSettings': customLocationSettings,
      'errorInfo': errorInfo.toMap(),
      'extensionType': ?extensionType,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'isSystemExtension': isSystemExtension,
      'name': name,
      'packageUri': packageUri,
      'plan': ?plan == null ? null : plan!.toMap(),
      'provisioningState': provisioningState,
      'releaseTrain': ?releaseTrain,
      'scope': ?scope == null ? null : scope!.toMap(),
      'statuses': ?statuses == null ? null : pulumi.Input.encodeList<ExtensionStatusResponse, Map<String, dynamic>>(statuses!, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'type': type,
      'version': ?version,
    };
  }

  factory GetExtensionResult.fromMap(Map<String, dynamic> map) {
    return GetExtensionResult(
      aksAssignedIdentity: map['aksAssignedIdentity'] == null ? null : ExtensionResponseAksAssignedIdentity.fromMap((map['aksAssignedIdentity']! as Map).cast<String, dynamic>()),
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : map['autoUpgradeMinorVersion']! as bool,
      azureApiVersion: map['azureApiVersion'] as String,
      configurationProtectedSettings: map['configurationProtectedSettings'] == null ? null : (map['configurationProtectedSettings']! as Map).cast<String, String>(),
      configurationSettings: map['configurationSettings'] == null ? null : (map['configurationSettings']! as Map).cast<String, String>(),
      currentVersion: map['currentVersion'] as String,
      customLocationSettings: (map['customLocationSettings'] as Map).cast<String, String>(),
      errorInfo: ErrorDetailResponse.fromMap((map['errorInfo'] as Map).cast<String, dynamic>()),
      extensionType: map['extensionType'] == null ? null : map['extensionType']! as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      isSystemExtension: map['isSystemExtension'] as bool,
      name: map['name'] as String,
      packageUri: map['packageUri'] as String,
      plan: map['plan'] == null ? null : PlanResponse.fromMap((map['plan']! as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      releaseTrain: map['releaseTrain'] == null ? null : map['releaseTrain']! as String,
      scope: map['scope'] == null ? null : ScopeResponse.fromMap((map['scope']! as Map).cast<String, dynamic>()),
      statuses: map['statuses'] == null ? null : pulumi.Input.decodeList<ExtensionStatusResponse>(map['statuses']!, (value) => ExtensionStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version']! as String,
    );
  }
}

