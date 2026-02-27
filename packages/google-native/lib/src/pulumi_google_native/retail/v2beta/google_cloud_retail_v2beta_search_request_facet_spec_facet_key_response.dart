// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_retail_v2beta_interval_response.dart';

/// Specifies how a facet is computed.
class GoogleCloudRetailV2betaSearchRequestFacetSpecFacetKeyResponse {
  /// True to make facet keys case insensitive when getting faceting values with prefixes or contains; false otherwise.
  final bool caseInsensitive;

  /// Only get facet values that contains the given strings. For example, suppose "categories" has three values "Women > Shoe", "Women > Dress" and "Men > Shoe". If set "contains" to "Shoe", the "categories" facet gives only "Women > Shoe" and "Men > Shoe". Only supported on textual fields. Maximum is 10.
  final List<String> contains;

  /// Set only if values should be bucketized into intervals. Must be set for facets with numerical values. Must not be set for facet with text values. Maximum number of intervals is 40. For all numerical facet keys that appear in the list of products from the catalog, the percentiles 0, 10, 30, 50, 70, 90, and 100 are computed from their distribution weekly. If the model assigns a high score to a numerical facet key and its intervals are not specified in the search request, these percentiles become the bounds for its intervals and are returned in the response. If the facet key intervals are specified in the request, then the specified intervals are returned instead.
  final List<GoogleCloudRetailV2betaIntervalResponse> intervals;

  /// Supported textual and numerical facet keys in Product object, over which the facet values are computed. Facet key is case-sensitive. Allowed facet keys when FacetKey.query is not specified: * textual_field = * "brands" * "categories" * "genders" * "ageGroups" * "availability" * "colorFamilies" * "colors" * "sizes" * "materials" * "patterns" * "conditions" * "attributes.key" * "pickupInStore" * "shipToStore" * "sameDayDelivery" * "nextDayDelivery" * "customFulfillment1" * "customFulfillment2" * "customFulfillment3" * "customFulfillment4" * "customFulfillment5" * "inventory(place_id,attributes.key)" * numerical_field = * "price" * "discount" * "rating" * "ratingCount" * "attributes.key" * "inventory(place_id,price)" * "inventory(place_id,original_price)" * "inventory(place_id,attributes.key)"
  final String key;

  /// The order in which SearchResponse.Facet.values are returned. Allowed values are: * "count desc", which means order by SearchResponse.Facet.values.count descending. * "value desc", which means order by SearchResponse.Facet.values.value descending. Only applies to textual facets. If not set, textual values are sorted in [natural order](https://en.wikipedia.org/wiki/Natural_sort_order); numerical intervals are sorted in the order given by FacetSpec.FacetKey.intervals; FulfillmentInfo.place_ids are sorted in the order given by FacetSpec.FacetKey.restricted_values.
  final String orderBy;

  /// Only get facet values that start with the given string prefix. For example, suppose "categories" has three values "Women > Shoe", "Women > Dress" and "Men > Shoe". If set "prefixes" to "Women", the "categories" facet gives only "Women > Shoe" and "Women > Dress". Only supported on textual fields. Maximum is 10.
  final List<String> prefixes;

  /// The query that is used to compute facet for the given facet key. When provided, it overrides the default behavior of facet computation. The query syntax is the same as a filter expression. See SearchRequest.filter for detail syntax and limitations. Notice that there is no limitation on FacetKey.key when query is specified. In the response, SearchResponse.Facet.values.value is always "1" and SearchResponse.Facet.values.count is the number of results that match the query. For example, you can set a customized facet for "shipToStore", where FacetKey.key is "customizedShipToStore", and FacetKey.query is "availability: ANY(\"IN_STOCK\") AND shipToStore: ANY(\"123\")". Then the facet counts the products that are both in stock and ship to store "123".
  final String query;

  /// Only get facet for the given restricted values. For example, when using "pickupInStore" as key and set restricted values to ["store123", "store456"], only facets for "store123" and "store456" are returned. Only supported on predefined textual fields, custom textual attributes and fulfillments. Maximum is 20. Must be set for the fulfillment facet keys: * pickupInStore * shipToStore * sameDayDelivery * nextDayDelivery * customFulfillment1 * customFulfillment2 * customFulfillment3 * customFulfillment4 * customFulfillment5
  final List<String> restrictedValues;

  /// Returns the min and max value for each numerical facet intervals. Ignored for textual facets.
  final bool returnMinMax;

  GoogleCloudRetailV2betaSearchRequestFacetSpecFacetKeyResponse({
    required this.caseInsensitive,
    required this.contains,
    required this.intervals,
    required this.key,
    required this.orderBy,
    required this.prefixes,
    required this.query,
    required this.restrictedValues,
    required this.returnMinMax,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caseInsensitive'] = caseInsensitive;
    map['contains'] = contains;
    map['intervals'] = Input.encodeList<GoogleCloudRetailV2betaIntervalResponse,
        Map<String, dynamic>>(intervals, (value) => value.toMap());
    map['key'] = key;
    map['orderBy'] = orderBy;
    map['prefixes'] = prefixes;
    map['query'] = query;
    map['restrictedValues'] = restrictedValues;
    map['returnMinMax'] = returnMinMax;
    return map;
  }

  factory GoogleCloudRetailV2betaSearchRequestFacetSpecFacetKeyResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaSearchRequestFacetSpecFacetKeyResponse(
      caseInsensitive: map['caseInsensitive'] as bool,
      contains: (map['contains'] as List).cast<String>(),
      intervals: Input.decodeList<GoogleCloudRetailV2betaIntervalResponse>(
          map['intervals'],
          (value) => GoogleCloudRetailV2betaIntervalResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      key: map['key'] as String,
      orderBy: map['orderBy'] as String,
      prefixes: (map['prefixes'] as List).cast<String>(),
      query: map['query'] as String,
      restrictedValues: (map['restrictedValues'] as List).cast<String>(),
      returnMinMax: map['returnMinMax'] as bool,
    );
  }
}
