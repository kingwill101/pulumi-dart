// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cs_get_kubernetes_version_get_kubernetes_version_args_doc}
/// Arguments for getKubernetesVersion.
/// {@endtemplate}
/// {@macro pulumi_cs_get_kubernetes_version_get_kubernetes_version_args_doc}
class GetKubernetesVersionArgs {
  /// The type of cluster. Its valid value are `Kubernetes` and `ManagedKubernetes`.
  final pulumi.Input<String> clusterType;
  /// The ACK released kubernetes version.
  final pulumi.Input<String>? kubernetesVersion;
  /// The profile of cluster. Its valid value are `Default`, `Serverless`, `Edge` and `Acs`.
  final pulumi.Input<String>? profile;

  /// Creates a new [GetKubernetesVersionArgs].
  /// [clusterType] The type of cluster. Its valid value are `Kubernetes` and `ManagedKubernetes`.
  /// [kubernetesVersion] The ACK released kubernetes version.
  /// [profile] The profile of cluster. Its valid value are `Default`, `Serverless`, `Edge` and `Acs`.
  GetKubernetesVersionArgs({
    required this.clusterType,
    this.kubernetesVersion,
    this.profile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterType': clusterType,
      'kubernetesVersion': ?kubernetesVersion,
      'profile': ?profile,
    };
  }

  factory GetKubernetesVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetKubernetesVersionArgs(
      clusterType: (map['clusterType'] as String).input(),
      kubernetesVersion: map['kubernetesVersion'] == null ? null : (map['kubernetesVersion']! as String).input(),
      profile: map['profile'] == null ? null : (map['profile']! as String).input(),
    );
  }
}

