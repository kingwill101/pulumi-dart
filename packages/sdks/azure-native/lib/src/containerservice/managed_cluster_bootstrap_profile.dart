// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The bootstrap profile.
class ManagedClusterBootstrapProfile {
  /// The artifact source. The source where the artifacts are downloaded from.
  final pulumi.Input<String>? artifactSource;
  /// The resource Id of Azure Container Registry. The registry must have private network access, premium SKU and zone redundancy.
  final pulumi.Input<String>? containerRegistryId;

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
      artifactSource: (() { final guardedValue = map['artifactSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerRegistryId: (() { final guardedValue = map['containerRegistryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

