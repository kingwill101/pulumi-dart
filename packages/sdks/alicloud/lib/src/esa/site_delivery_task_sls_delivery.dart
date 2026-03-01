// ignore_for_file: unused_element, unnecessary_cast


class SiteDeliveryTaskSlsDelivery {
  final String? slsLogStore;
  final String? slsProject;
  final String? slsRegion;

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
      slsLogStore: map['slsLogStore'] == null ? null : map['slsLogStore'] as String,
      slsProject: map['slsProject'] == null ? null : map['slsProject'] as String,
      slsRegion: map['slsRegion'] == null ? null : map['slsRegion'] as String,
    );
  }
}

