// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_response.dart';

/// Result data returned by listFeaturesetVersionFeatures.
class ListFeaturesetVersionFeaturesResult {
  /// The link to the next page of Feature objects. If null, there are no additional pages.
  final String? nextLink;
  /// An array of objects of type Feature.
  final List<FeatureResponse>? value;

  /// Creates a new [ListFeaturesetVersionFeaturesResult].
  /// [nextLink] The link to the next page of Feature objects. If null, there are no additional pages.
  /// [value] An array of objects of type Feature.
  ListFeaturesetVersionFeaturesResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<FeatureResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListFeaturesetVersionFeaturesResult.fromMap(Map<String, dynamic> map) {
    return ListFeaturesetVersionFeaturesResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink']! as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<FeatureResponse>(map['value']!, (value) => FeatureResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

