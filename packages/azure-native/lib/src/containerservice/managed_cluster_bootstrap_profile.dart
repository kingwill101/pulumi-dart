// ignore_for_file: unused_element, unnecessary_cast


/// The bootstrap profile.
class ManagedClusterBootstrapProfile {
  /// The artifact source. The source where the artifacts are downloaded from.
  final String? artifactSource;
  /// The resource Id of Azure Container Registry. The registry must have private network access, premium SKU and zone redundancy.
  final String? containerRegistryId;

  /// Creates a new [ManagedClusterBootstrapProfile].
  /// [artifactSource] The artifact source. The source where the artifacts are downloaded from.
  /// [containerRegistryId] The resource Id of Azure Container Registry. The registry must have private network access, premium SKU and zone redundancy.
  ManagedClusterBootstrapProfile({
    this.artifactSource,
    this.containerRegistryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactSource': ?artifactSource,
      'containerRegistryId': ?containerRegistryId,
    };
  }

  factory ManagedClusterBootstrapProfile.fromMap(Map<String, dynamic> map) {
    return ManagedClusterBootstrapProfile(
      artifactSource: map['artifactSource'] == null ? null : map['artifactSource'] as String,
      containerRegistryId: map['containerRegistryId'] == null ? null : map['containerRegistryId'] as String,
    );
  }
}

