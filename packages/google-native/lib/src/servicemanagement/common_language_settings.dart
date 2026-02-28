// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'common_language_settings_destinations_item.dart';

/// Required information for every language.
class CommonLanguageSettings {
  /// The destination where API teams want this client library to be published.
  final List<CommonLanguageSettingsDestinationsItem>? destinations;

  /// Link to automatically generated reference documentation. Example: https://cloud.google.com/nodejs/docs/reference/asset/latest
  final String? referenceDocsUri;

  /// Creates a new [CommonLanguageSettings].
  /// [destinations] The destination where API teams want this client library to be published.
  /// [referenceDocsUri] Link to automatically generated reference documentation. Example: https://cloud.google.com/nodejs/docs/reference/asset/latest
  CommonLanguageSettings({
    this.destinations,
    this.referenceDocsUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationsValue = destinations;
    if (destinationsValue != null) {
      map['destinations'] = pulumi.Input.encodeList<
          CommonLanguageSettingsDestinationsItem,
          String>(destinationsValue, (value) => value.value);
    }
    final referenceDocsUriValue = referenceDocsUri;
    if (referenceDocsUriValue != null) {
      map['referenceDocsUri'] = referenceDocsUriValue;
    }
    return map;
  }

  factory CommonLanguageSettings.fromMap(Map<String, dynamic> map) {
    return CommonLanguageSettings(
      destinations: map['destinations'] == null
          ? null
          : pulumi.Input.decodeList<CommonLanguageSettingsDestinationsItem>(
              map['destinations'],
              (value) => CommonLanguageSettingsDestinationsItem.fromValue(
                  value as String)),
      referenceDocsUri: map['referenceDocsUri'] == null
          ? null
          : map['referenceDocsUri'] as String,
    );
  }
}
