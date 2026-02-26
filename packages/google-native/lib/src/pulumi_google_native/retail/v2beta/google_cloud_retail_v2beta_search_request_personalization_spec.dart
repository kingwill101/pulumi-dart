// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_retail_v2beta_search_request_personalization_spec_mode.dart';

/// The specification for personalization.
class GoogleCloudRetailV2betaSearchRequestPersonalizationSpec {
  /// Defaults to Mode.AUTO.
  final GoogleCloudRetailV2betaSearchRequestPersonalizationSpecMode? mode;

  GoogleCloudRetailV2betaSearchRequestPersonalizationSpec({
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

  factory GoogleCloudRetailV2betaSearchRequestPersonalizationSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaSearchRequestPersonalizationSpec(
      mode: map['mode'] == null
          ? null
          : GoogleCloudRetailV2betaSearchRequestPersonalizationSpecMode
              .fromValue(map['mode'] as String),
    );
  }
}
