// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2alpha_model_page_optimization_config_panel.dart';
import 'google_cloud_retail_v2alpha_model_page_optimization_config_restriction.dart';

/// The PageOptimizationConfig for model training. This determines how many panels to optimize for, and which serving configs to consider for each panel. The purpose of this model is to optimize which ServingConfig to show on which panels in way that optimizes the visitors shopping journey.
class GoogleCloudRetailV2alphaModelPageOptimizationConfig {
  /// The type of UserEvent this page optimization is shown for. Each page has an associated event type - this will be the corresponding event type for the page that the page optimization model is used on. Supported types: * `add-to-cart`: Products being added to cart. * `detail-page-view`: Products detail page viewed. * `home-page-view`: Homepage viewed * `category-page-view`: Homepage viewed * `shopping-cart-page-view`: User viewing a shopping cart. `home-page-view` only allows models with type `recommended-for-you`. All other page_optimization_event_type allow all Model.types.
  final String pageOptimizationEventType;

  /// A list of panel configurations. Limit = 5.
  final List<GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel> panels;

  /// Optional. How to restrict results across panels e.g. can the same ServingConfig be shown on multiple panels at once. If unspecified, default to `UNIQUE_MODEL_RESTRICTION`.
  final GoogleCloudRetailV2alphaModelPageOptimizationConfigRestriction?
      restriction;

  GoogleCloudRetailV2alphaModelPageOptimizationConfig({
    required this.pageOptimizationEventType,
    required this.panels,
    this.restriction,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pageOptimizationEventType'] = pageOptimizationEventType;
    map['panels'] = pulumi.Input.encodeList<
        GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel,
        Map<String, dynamic>>(panels, (value) => value.toMap());
    final restrictionValue = restriction;
    if (restrictionValue != null) {
      map['restriction'] = restrictionValue.value;
    }
    return map;
  }

  factory GoogleCloudRetailV2alphaModelPageOptimizationConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaModelPageOptimizationConfig(
      pageOptimizationEventType: map['pageOptimizationEventType'] as String,
      panels: pulumi.Input.decodeList<
              GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel>(
          map['panels'],
          (value) =>
              GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel.fromMap(
                  (value as Map).cast<String, dynamic>())),
      restriction: map['restriction'] == null
          ? null
          : GoogleCloudRetailV2alphaModelPageOptimizationConfigRestriction
              .fromValue(map['restriction'] as String),
    );
  }
}
