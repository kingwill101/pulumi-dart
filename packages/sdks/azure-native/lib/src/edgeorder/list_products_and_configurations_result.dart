// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_response.dart';

/// Result data returned by listProductsAndConfigurations.
class ListProductsAndConfigurationsResult {
  /// The link to the next page of items
  final String? nextLink;

  /// The Configuration items on this page
  final List<ConfigurationResponse> value;

  /// Creates a new [ListProductsAndConfigurationsResult].
  /// [nextLink] The link to the next page of items
  /// [value] The Configuration items on this page
  ListProductsAndConfigurationsResult({this.nextLink, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value':
          pulumi.Input.encodeList<ConfigurationResponse, Map<String, dynamic>>(
            value,
            (value) => value.toMap(),
          ),
    };
  }

  factory ListProductsAndConfigurationsResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListProductsAndConfigurationsResult(
      nextLink: (() {
        final guardedValue = map['nextLink'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      value: pulumi.Input.decodeList<ConfigurationResponse>(
        map['value']!,
        (value) => ConfigurationResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
