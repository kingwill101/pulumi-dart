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
  const SiteDeliveryTaskSlsDelivery({
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
      slsLogStore: (() { final guardedValue = map['slsLogStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slsProject: (() { final guardedValue = map['slsProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slsRegion: (() { final guardedValue = map['slsRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

