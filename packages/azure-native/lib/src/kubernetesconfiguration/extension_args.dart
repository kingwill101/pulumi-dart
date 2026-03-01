// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_aks_assigned_identity.dart';
import 'extension_status.dart';
import 'identity.dart';
import 'plan.dart';
import 'scope.dart';

/// {@template pulumi_kubernetesconfiguration_extension_args_doc}
/// The set of arguments for Extension.
/// {@endtemplate}
/// {@macro pulumi_kubernetesconfiguration_extension_args_doc}
class ExtensionArgs {
  /// Identity of the Extension resource in an AKS cluster
  final pulumi.Input<ExtensionAksAssignedIdentity>? aksAssignedIdentity;
  /// Flag to note if this extension participates in auto upgrade of minor version, or not.
  final pulumi.Input<bool>? autoUpgradeMinorVersion;
  /// The name of the kubernetes cluster.
  final pulumi.Input<String> clusterName;
  /// The Kubernetes cluster resource name - i.e. managedClusters, connectedClusters, provisionedClusters.
  final pulumi.Input<String> clusterResourceName;
  /// The Kubernetes cluster RP - i.e. Microsoft.ContainerService, Microsoft.Kubernetes, Microsoft.HybridContainerService.
  final pulumi.Input<String> clusterRp;
  /// Configuration settings that are sensitive, as name-value pairs for configuring this extension.
  final pulumi.Input<Map<String, String>>? configurationProtectedSettings;
  /// Configuration settings, as name-value pairs for configuring this extension.
  final pulumi.Input<Map<String, String>>? configurationSettings;
  /// Name of the Extension.
  final pulumi.Input<String>? extensionName;
  /// Type of the Extension, of which this resource is an instance of.  It must be one of the Extension Types registered with Microsoft.KubernetesConfiguration by the Extension publisher.
  final pulumi.Input<String>? extensionType;
  /// Identity of the Extension resource
  final pulumi.Input<Identity>? identity;
  /// The plan information.
  final pulumi.Input<Plan>? plan;
  /// ReleaseTrain this extension participates in for auto-upgrade (e.g. Stable, Preview, etc.) - only if autoUpgradeMinorVersion is 'true'.
  final pulumi.Input<String>? releaseTrain;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Scope at which the extension is installed.
  final pulumi.Input<Scope>? scope;
  /// Status from this extension.
  final pulumi.Input<List<ExtensionStatus>>? statuses;
  /// User-specified version of the extension for this extension to 'pin'. To use 'version', autoUpgradeMinorVersion must be 'false'.
  final pulumi.Input<String>? version;

  /// Creates a new [ExtensionArgs].
  /// [aksAssignedIdentity] Identity of the Extension resource in an AKS cluster
  /// [autoUpgradeMinorVersion] Flag to note if this extension participates in auto upgrade of minor version, or not.
  /// [clusterName] The name of the kubernetes cluster.
  /// [clusterResourceName] The Kubernetes cluster resource name - i.e. managedClusters, connectedClusters, provisionedClusters.
  /// [clusterRp] The Kubernetes cluster RP - i.e. Microsoft.ContainerService, Microsoft.Kubernetes, Microsoft.HybridContainerService.
  /// [configurationProtectedSettings] Configuration settings that are sensitive, as name-value pairs for configuring this extension.
  /// [configurationSettings] Configuration settings, as name-value pairs for configuring this extension.
  /// [extensionName] Name of the Extension.
  /// [extensionType] Type of the Extension, of which this resource is an instance of.  It must be one of the Extension Types registered with Microsoft.KubernetesConfiguration by the Extension publisher.
  /// [identity] Identity of the Extension resource
  /// [plan] The plan information.
  /// [releaseTrain] ReleaseTrain this extension participates in for auto-upgrade (e.g. Stable, Preview, etc.) - only if autoUpgradeMinorVersion is 'true'.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scope] Scope at which the extension is installed.
  /// [statuses] Status from this extension.
  /// [version] User-specified version of the extension for this extension to 'pin'. To use 'version', autoUpgradeMinorVersion must be 'false'.
  ExtensionArgs({
    ExtensionAksAssignedIdentity? aksAssignedIdentity,
    bool? autoUpgradeMinorVersion,
    required String clusterName,
    required String clusterResourceName,
    required String clusterRp,
    Map<String, String>? configurationProtectedSettings,
    Map<String, String>? configurationSettings,
    String? extensionName,
    String? extensionType,
    Identity? identity,
    Plan? plan,
    String? releaseTrain,
    required String resourceGroupName,
    Scope? scope,
    List<ExtensionStatus>? statuses,
    String? version,
  }) :
      aksAssignedIdentity = pulumi.Input.asOptionalInput<ExtensionAksAssignedIdentity>(aksAssignedIdentity),
      autoUpgradeMinorVersion = pulumi.Input.asOptionalInput<bool>(autoUpgradeMinorVersion),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      clusterResourceName = pulumi.Input.asInput<String>(clusterResourceName),
      clusterRp = pulumi.Input.asInput<String>(clusterRp),
      configurationProtectedSettings = pulumi.Input.asOptionalInput<Map<String, String>>(configurationProtectedSettings),
      configurationSettings = pulumi.Input.asOptionalInput<Map<String, String>>(configurationSettings),
      extensionName = pulumi.Input.asOptionalInput<String>(extensionName),
      extensionType = pulumi.Input.asOptionalInput<String>(extensionType),
      identity = pulumi.Input.asOptionalInput<Identity>(identity),
      plan = pulumi.Input.asOptionalInput<Plan>(plan),
      releaseTrain = pulumi.Input.asOptionalInput<String>(releaseTrain),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scope = pulumi.Input.asOptionalInput<Scope>(scope),
      statuses = pulumi.Input.asOptionalInput<List<ExtensionStatus>>(statuses),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aksAssignedIdentity': ?pulumi.Input.mapOptionalInputValue<ExtensionAksAssignedIdentity, Map<String, dynamic>>(aksAssignedIdentity, (value) => value.toMap()),
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'clusterName': clusterName,
      'clusterResourceName': clusterResourceName,
      'clusterRp': clusterRp,
      'configurationProtectedSettings': ?configurationProtectedSettings,
      'configurationSettings': ?configurationSettings,
      'extensionName': ?extensionName,
      'extensionType': ?extensionType,
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'plan': ?pulumi.Input.mapOptionalInputValue<Plan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'releaseTrain': ?releaseTrain,
      'resourceGroupName': resourceGroupName,
      'scope': ?pulumi.Input.mapOptionalInputValue<Scope, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<ExtensionStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<ExtensionStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': ?version,
    };
  }

  factory ExtensionArgs.fromMap(Map<String, dynamic> map) {
    return ExtensionArgs(
      aksAssignedIdentity: map['aksAssignedIdentity'] == null ? null : ExtensionAksAssignedIdentity.fromMap((map['aksAssignedIdentity'] as Map).cast<String, dynamic>()),
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : map['autoUpgradeMinorVersion'] as bool,
      clusterName: map['clusterName'] as String,
      clusterResourceName: map['clusterResourceName'] as String,
      clusterRp: map['clusterRp'] as String,
      configurationProtectedSettings: map['configurationProtectedSettings'] == null ? null : (map['configurationProtectedSettings'] as Map).cast<String, String>(),
      configurationSettings: map['configurationSettings'] == null ? null : (map['configurationSettings'] as Map).cast<String, String>(),
      extensionName: map['extensionName'] == null ? null : map['extensionName'] as String,
      extensionType: map['extensionType'] == null ? null : map['extensionType'] as String,
      identity: map['identity'] == null ? null : Identity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      plan: map['plan'] == null ? null : Plan.fromMap((map['plan'] as Map).cast<String, dynamic>()),
      releaseTrain: map['releaseTrain'] == null ? null : map['releaseTrain'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      scope: map['scope'] == null ? null : Scope.fromMap((map['scope'] as Map).cast<String, dynamic>()),
      statuses: map['statuses'] == null ? null : pulumi.Input.decodeList<ExtensionStatus>(map['statuses'], (value) => ExtensionStatus.fromMap((value as Map).cast<String, dynamic>())),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

