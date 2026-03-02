// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The bootstrap profile.
class ManagedClusterBootstrapProfileResponse {
  /// The artifact source. The source where the artifacts are downloaded from.
  final pulumi.Input<String>? artifactSource;
  /// The resource Id of Azure Container Registry. The registry must have private network access, premium SKU and zone redundancy.
  final pulumi.Input<String>? containerRegistryId;

  /// Creates a new [ManagedClusterBootstrapProfileResponse].
  /// [artifactSource] The artifact source. The source where the artifacts are downloaded from.
  /// [containerRegistryId] The resource Id of Azure Container Registry. The registry must have private network access, premium SKU and zone redundancy.
  ManagedClusterBootstrapProfileResponse({
    this.artifactSource,
    this.containerRegistryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactSource': ?artifactSource,
      'containerRegistryId': ?containerRegistryId,
    };
  }

  factory ManagedClusterBootstrapProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterBootstrapProfileResponse(
      artifactSource: map['artifactSource'] == null ? null : (map['artifactSource'] as String).input(),
      containerRegistryId: map['containerRegistryId'] == null ? null : (map['containerRegistryId'] as String).input(),
    );
  }
}

