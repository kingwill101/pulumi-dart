// ignore_for_file: unused_element, unnecessary_cast

import '../ai_feature_online_store_bigtable_auto_scaling/ai_feature_online_store_bigtable_auto_scaling.dart';

class AiFeatureOnlineStoreBigtable {
  /// Autoscaling config applied to Bigtable Instance.
  /// Structure is documented below.
  final AiFeatureOnlineStoreBigtableAutoScaling autoScaling;

  /// Optional. If true, enable direct access to the Bigtable instance.
  final bool? enableDirectBigtableAccess;

  /// The zone where the Bigtable instance will be created.
  final String? zone;

  AiFeatureOnlineStoreBigtable({
    required this.autoScaling,
    this.enableDirectBigtableAccess,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoScaling'] = autoScaling.toMap();
    final enableDirectBigtableAccessValue = enableDirectBigtableAccess;
    if (enableDirectBigtableAccessValue != null) {
      map['enableDirectBigtableAccess'] = enableDirectBigtableAccessValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory AiFeatureOnlineStoreBigtable.fromMap(Map<String, dynamic> map) {
    return AiFeatureOnlineStoreBigtable(
      autoScaling: AiFeatureOnlineStoreBigtableAutoScaling.fromMap(
          (map['autoScaling'] as Map).cast<String, dynamic>()),
      enableDirectBigtableAccess: map['enableDirectBigtableAccess'] == null
          ? null
          : map['enableDirectBigtableAccess'] as bool,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
