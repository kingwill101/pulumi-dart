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
      destLogstore: (() {
        final guardedValue = map['destLogstore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destProject: (() {
        final guardedValue = map['destProject'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destRegion: (() {
        final guardedValue = map['destRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destTtl: (() {
        final guardedValue = map['destTtl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
