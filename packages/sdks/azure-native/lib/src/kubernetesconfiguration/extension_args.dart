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
    this.aksAssignedIdentity,
    this.autoUpgradeMinorVersion,
    required this.clusterName,
    required this.clusterResourceName,
    required this.clusterRp,
    this.configurationProtectedSettings,
    this.configurationSettings,
    this.extensionName,
    this.extensionType,
    this.identity,
    this.plan,
    this.releaseTrain,
    required this.resourceGroupName,
    this.scope,
    this.statuses,
    this.version,
  });

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
      aksAssignedIdentity: map['aksAssignedIdentity'] == null ? null : (ExtensionAksAssignedIdentity.fromMap((map['aksAssignedIdentity']! as Map).cast<String, dynamic>())).input(),
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : (map['autoUpgradeMinorVersion']! as bool).input(),
      clusterName: (map['clusterName'] as String).input(),
      clusterResourceName: (map['clusterResourceName'] as String).input(),
      clusterRp: (map['clusterRp'] as String).input(),
      configurationProtectedSettings: map['configurationProtectedSettings'] == null ? null : ((map['configurationProtectedSettings']! as Map).cast<String, String>()).input(),
      configurationSettings: map['configurationSettings'] == null ? null : ((map['configurationSettings']! as Map).cast<String, String>()).input(),
      extensionName: map['extensionName'] == null ? null : (map['extensionName']! as String).input(),
      extensionType: map['extensionType'] == null ? null : (map['extensionType']! as String).input(),
      identity: map['identity'] == null ? null : (Identity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      plan: map['plan'] == null ? null : (Plan.fromMap((map['plan']! as Map).cast<String, dynamic>())).input(),
      releaseTrain: map['releaseTrain'] == null ? null : (map['releaseTrain']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scope: map['scope'] == null ? null : (Scope.fromMap((map['scope']! as Map).cast<String, dynamic>())).input(),
      statuses: map['statuses'] == null ? null : (pulumi.Input.decodeList<ExtensionStatus>(map['statuses']!, (value) => ExtensionStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

