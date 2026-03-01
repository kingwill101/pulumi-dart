// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_retail_v2beta_search_request_personalization_spec_mode.dart';

/// The specification for personalization.
class GoogleCloudRetailV2betaSearchRequestPersonalizationSpec {
  /// Defaults to Mode.AUTO.
  final GoogleCloudRetailV2betaSearchRequestPersonalizationSpecMode? mode;

  /// Creates a new [GoogleCloudRetailV2betaSearchRequestPersonalizationSpec].
  /// [mode] Defaults to Mode.AUTO.
  GoogleCloudRetailV2betaSearchRequestPersonalizationSpec({this.mode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mode': ?mode == null ? null : mode!.value};
  }

  factory GoogleCloudRetailV2betaSearchRequestPersonalizationSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRetailV2betaSearchRequestPersonalizationSpec(
      mode: map['mode'] == null
          ? null
          : GoogleCloudRetailV2betaSearchRequestPersonalizationSpecMode.fromValue(
              map['mode'] as String,
            ),
    );
  }
}
