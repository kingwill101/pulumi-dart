// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SiteDeliveryTaskSlsDelivery {
  final pulumi.Input<String>? slsLogStore;
  final pulumi.Input<String>? slsProject;
  final pulumi.Input<String>? slsRegion;

  /// Creates a new [SiteDeliveryTaskSlsDelivery].
  /// [slsLogStore] Optional.
  /// [slsProject] Optional.
  /// [slsRegion] Optional.
  SiteDeliveryTaskSlsDelivery({
    this.slsLogStore,
    this.slsProject,
    this.slsRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slsLogStore': ?slsLogStore,
      'slsProject': ?slsProject,
      'slsRegion': ?slsRegion,
    };
  }

  factory SiteDeliveryTaskSlsDelivery.fromMap(Map<String, dynamic> map) {
    return SiteDeliveryTaskSlsDelivery(
      slsLogStore: map['slsLogStore'] == null ? null : (map['slsLogStore']! as String).input(),
      slsProject: map['slsProject'] == null ? null : (map['slsProject']! as String).input(),
      slsRegion: map['slsRegion'] == null ? null : (map['slsRegion']! as String).input(),
    );
  }
}

