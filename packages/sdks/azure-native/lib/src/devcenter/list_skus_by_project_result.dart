// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dev_center_sku_response.dart';

/// Result data returned by listSkusByProject.
class ListSkusByProjectResult {
  /// URL to get the next set of results if there are any.
  final String nextLink;

  /// Current page of results.
  final List<DevCenterSkuResponse> value;

  /// Creates a new [ListSkusByProjectResult].
  /// [nextLink] URL to get the next set of results if there are any.
  /// [value] Current page of results.
  ListSkusByProjectResult({required this.nextLink, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': nextLink,
      'value':
          pulumi.Input.encodeList<DevCenterSkuResponse, Map<String, dynamic>>(
            value,
            (value) => value.toMap(),
          ),
    };
  }

  factory ListSkusByProjectResult.fromMap(Map<String, dynamic> map) {
    return ListSkusByProjectResult(
      nextLink: map['nextLink'] as String,
      value: pulumi.Input.decodeList<DevCenterSkuResponse>(
        map['value']!,
        (value) => DevCenterSkuResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
