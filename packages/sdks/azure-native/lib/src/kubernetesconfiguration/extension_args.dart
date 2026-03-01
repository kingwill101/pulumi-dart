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
    pulumi.Output<ExtensionAksAssignedIdentity>? aksAssignedIdentity,
    pulumi.Output<bool>? autoUpgradeMinorVersion,
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> clusterResourceName,
    required pulumi.Output<String> clusterRp,
    pulumi.Output<Map<String, String>>? configurationProtectedSettings,
    pulumi.Output<Map<String, String>>? configurationSettings,
    pulumi.Output<String>? extensionName,
    pulumi.Output<String>? extensionType,
    pulumi.Output<Identity>? identity,
    pulumi.Output<Plan>? plan,
    pulumi.Output<String>? releaseTrain,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Scope>? scope,
    pulumi.Output<List<ExtensionStatus>>? statuses,
    pulumi.Output<String>? version,
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
      aksAssignedIdentity: map['aksAssignedIdentity'] == null ? null : pulumi.Output.create<ExtensionAksAssignedIdentity>(ExtensionAksAssignedIdentity.fromMap((map['aksAssignedIdentity'] as Map).cast<String, dynamic>())),
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : pulumi.Output.create<bool>(map['autoUpgradeMinorVersion'] as bool),
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      clusterResourceName: pulumi.Output.create<String>(map['clusterResourceName'] as String),
      clusterRp: pulumi.Output.create<String>(map['clusterRp'] as String),
      configurationProtectedSettings: map['configurationProtectedSettings'] == null ? null : pulumi.Output.create<Map<String, String>>((map['configurationProtectedSettings'] as Map).cast<String, String>()),
      configurationSettings: map['configurationSettings'] == null ? null : pulumi.Output.create<Map<String, String>>((map['configurationSettings'] as Map).cast<String, String>()),
      extensionName: map['extensionName'] == null ? null : pulumi.Output.create<String>(map['extensionName'] as String),
      extensionType: map['extensionType'] == null ? null : pulumi.Output.create<String>(map['extensionType'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<Identity>(Identity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      plan: map['plan'] == null ? null : pulumi.Output.create<Plan>(Plan.fromMap((map['plan'] as Map).cast<String, dynamic>())),
      releaseTrain: map['releaseTrain'] == null ? null : pulumi.Output.create<String>(map['releaseTrain'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<Scope>(Scope.fromMap((map['scope'] as Map).cast<String, dynamic>())),
      statuses: map['statuses'] == null ? null : pulumi.Output.create<List<ExtensionStatus>>(pulumi.Input.decodeList<ExtensionStatus>(map['statuses'], (value) => ExtensionStatus.fromMap((value as Map).cast<String, dynamic>()))),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

