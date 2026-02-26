// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_retail_v2_search_request_personalization_spec_mode.dart';

/// The specification for personalization.
class GoogleCloudRetailV2SearchRequestPersonalizationSpec {
  /// Defaults to Mode.AUTO.
  final GoogleCloudRetailV2SearchRequestPersonalizationSpecMode? mode;

  GoogleCloudRetailV2SearchRequestPersonalizationSpec({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue.value;
    }
    return map;
  }

  factory GoogleCloudRetailV2SearchRequestPersonalizationSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2SearchRequestPersonalizationSpec(
      mode: map['mode'] == null
          ? null
          : GoogleCloudRetailV2SearchRequestPersonalizationSpecMode.fromValue(
              map['mode'] as String),
    );
  }
}
