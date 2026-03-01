// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_extension_identity.dart';

/// {@template pulumi_arckubernetes_cluster_extension_cluster_extension_args_doc}
/// The set of arguments for ClusterExtension.
/// {@endtemplate}
/// {@macro pulumi_arckubernetes_cluster_extension_cluster_extension_args_doc}
class ClusterExtensionArgs {
  /// Specifies the Cluster ID. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  final pulumi.Input<String> clusterId;
  /// Configuration settings that are sensitive, as name-value pairs for configuring this extension.
  final pulumi.Input<Map<String, String>>? configurationProtectedSettings;
  /// Configuration settings, as name-value pairs for configuring this extension.
  final pulumi.Input<Map<String, String>>? configurationSettings;
  /// Specifies the type of extension. It must be one of the extension types registered with Microsoft.KubernetesConfiguration by the Extension publisher. For more information, please refer to [Available Extensions for Arc-enabled Kubernetes clusters](https://learn.microsoft.com/en-us/azure/azure-arc/kubernetes/extensions-release). Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  final pulumi.Input<String> extensionType;
  /// An `identity` block as defined below. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  final pulumi.Input<ClusterExtensionIdentity> identity;
  /// Specifies the name which should be used for this Arc Kubernetes Cluster Extension. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  final pulumi.Input<String>? name;
  /// Namespace where the extension release must be placed for a cluster scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  final pulumi.Input<String>? releaseNamespace;
  /// The release train used by this extension. Possible values include but are not limited to `Stable`, `Preview`. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  final pulumi.Input<String>? releaseTrain;
  /// Namespace where the extension will be created for a namespace scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  final pulumi.Input<String>? targetNamespace;
  /// User-specified version that the extension should pin to. If it is not set, Azure will use the latest version and auto upgrade it. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  final pulumi.Input<String>? version;

  /// Creates a new [ClusterExtensionArgs].
  /// [clusterId] Specifies the Cluster ID. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  /// [configurationProtectedSettings] Configuration settings that are sensitive, as name-value pairs for configuring this extension.
  /// [configurationSettings] Configuration settings, as name-value pairs for configuring this extension.
  /// [extensionType] Specifies the type of extension. It must be one of the extension types registered with Microsoft.KubernetesConfiguration by the Extension publisher. For more information, please refer to [Available Extensions for Arc-enabled Kubernetes clusters](https://learn.microsoft.com/en-us/azure/azure-arc/kubernetes/extensions-release). Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  /// [identity] An `identity` block as defined below. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  /// [name] Specifies the name which should be used for this Arc Kubernetes Cluster Extension. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  /// [releaseNamespace] Namespace where the extension release must be placed for a cluster scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  /// [releaseTrain] The release train used by this extension. Possible values include but are not limited to `Stable`, `Preview`. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  /// [targetNamespace] Namespace where the extension will be created for a namespace scoped extension. If this namespace does not exist, it will be created. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  /// [version] User-specified version that the extension should pin to. If it is not set, Azure will use the latest version and auto upgrade it. Changing this forces a new Arc Kubernetes Cluster Extension to be created.
  ClusterExtensionArgs({
    required String clusterId,
    Map<String, String>? configurationProtectedSettings,
    Map<String, String>? configurationSettings,
    required String extensionType,
    required ClusterExtensionIdentity identity,
    String? name,
    String? releaseNamespace,
    String? releaseTrain,
    String? targetNamespace,
    String? version,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      configurationProtectedSettings = pulumi.Input.asOptionalInput<Map<String, String>>(configurationProtectedSettings),
      configurationSettings = pulumi.Input.asOptionalInput<Map<String, String>>(configurationSettings),
      extensionType = pulumi.Input.asInput<String>(extensionType),
      identity = pulumi.Input.asInput<ClusterExtensionIdentity>(identity),
      name = pulumi.Input.asOptionalInput<String>(name),
      releaseNamespace = pulumi.Input.asOptionalInput<String>(releaseNamespace),
      releaseTrain = pulumi.Input.asOptionalInput<String>(releaseTrain),
      targetNamespace = pulumi.Input.asOptionalInput<String>(targetNamespace),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'configurationProtectedSettings': ?configurationProtectedSettings,
      'configurationSettings': ?configurationSettings,
      'extensionType': extensionType,
      'identity': pulumi.Input.mapInputValue<ClusterExtensionIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'name': ?name,
      'releaseNamespace': ?releaseNamespace,
      'releaseTrain': ?releaseTrain,
      'targetNamespace': ?targetNamespace,
      'version': ?version,
    };
  }

  factory ClusterExtensionArgs.fromMap(Map<String, dynamic> map) {
    return ClusterExtensionArgs(
      clusterId: map['clusterId'] as String,
      configurationProtectedSettings: map['configurationProtectedSettings'] == null ? null : (map['configurationProtectedSettings'] as Map).cast<String, String>(),
      configurationSettings: map['configurationSettings'] == null ? null : (map['configurationSettings'] as Map).cast<String, String>(),
      extensionType: map['extensionType'] as String,
      identity: ClusterExtensionIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      releaseNamespace: map['releaseNamespace'] == null ? null : map['releaseNamespace'] as String,
      releaseTrain: map['releaseTrain'] == null ? null : map['releaseTrain'] as String,
      targetNamespace: map['targetNamespace'] == null ? null : map['targetNamespace'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

