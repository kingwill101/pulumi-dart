// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubernetes_version_metadata.dart';

/// Result data returned by getKubernetesVersion.
class GetKubernetesVersionResult {
  final String clusterType;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? kubernetesVersion;
  /// A list of metadata of kubernetes version.
  final List<GetKubernetesVersionMetadata> metadatas;
  final String? profile;

  /// Creates a new [GetKubernetesVersionResult].
  /// [clusterType] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kubernetesVersion] Optional.
  /// [metadatas] A list of metadata of kubernetes version.
  /// [profile] Optional.
  const GetKubernetesVersionResult({
    required this.clusterType,
    required this.id,
    this.kubernetesVersion,
    required this.metadatas,
    this.profile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterType': clusterType,
      'id': id,
      'kubernetesVersion': ?kubernetesVersion,
      'metadatas': pulumi.Input.encodeList<GetKubernetesVersionMetadata, Map<String, dynamic>>(metadatas, (value) => value.toMap()),
      'profile': ?profile,
    };
  }

  factory GetKubernetesVersionResult.fromMap(Map<String, dynamic> map) {
    return GetKubernetesVersionResult(
      clusterType: map['clusterType'] as String,
      id: map['id'] as String,
      kubernetesVersion: (() { final guardedValue = map['kubernetesVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadatas: pulumi.Input.decodeList<GetKubernetesVersionMetadata>(map['metadatas']!, (value) => GetKubernetesVersionMetadata.fromMap((value as Map).cast<String, dynamic>())),
      profile: (() { final guardedValue = map['profile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

