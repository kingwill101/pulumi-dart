// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CollectionPolicyCentralizeConfig {
  /// Destination Logstore for centralized forwarding. Its region must match destRegion and it must belong to destProject.
  final pulumi.Input<String>? destLogstore;
  /// Destination project for centralized forwarding. Its region must match destRegion.
  final pulumi.Input<String>? destProject;
  /// Destination region for centralized forwarding.
  final pulumi.Input<String>? destRegion;
  /// Retention period (in days) for the destination Logstore in centralized forwarding. This setting takes effect only when the destination Logstore is created for the first time.
  final pulumi.Input<int>? destTtl;

  /// Creates a new [CollectionPolicyCentralizeConfig].
  /// [destLogstore] Destination Logstore for centralized forwarding. Its region must match destRegion and it must belong to destProject.
  /// [destProject] Destination project for centralized forwarding. Its region must match destRegion.
  /// [destRegion] Destination region for centralized forwarding.
  /// [destTtl] Retention period (in days) for the destination Logstore in centralized forwarding. This setting takes effect only when the destination Logstore is created for the first time.
  CollectionPolicyCentralizeConfig({
    this.destLogstore,
    this.destProject,
    this.destRegion,
    this.destTtl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destLogstore': ?destLogstore,
      'destProject': ?destProject,
      'destRegion': ?destRegion,
      'destTtl': ?destTtl,
    };
  }

  factory CollectionPolicyCentralizeConfig.fromMap(Map<String, dynamic> map) {
    return CollectionPolicyCentralizeConfig(
      destLogstore: map['destLogstore'] == null ? null : (map['destLogstore'] as String).input(),
      destProject: map['destProject'] == null ? null : (map['destProject'] as String).input(),
      destRegion: map['destRegion'] == null ? null : (map['destRegion'] as String).input(),
      destTtl: map['destTtl'] == null ? null : (map['destTtl'] as int).input(),
    );
  }
}

