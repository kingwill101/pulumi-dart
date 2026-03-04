// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_model_properties_response.dart';

/// Result data returned by listConnectionModels.
class ListConnectionModelsResult {
  /// The link to the next page constructed using the continuationToken.  If null, there are no additional pages.
  final String? nextLink;

  /// List of models.
  final List<EndpointModelPropertiesResponse>? value;

  /// Creates a new [ListConnectionModelsResult].
  /// [nextLink] The link to the next page constructed using the continuationToken.  If null, there are no additional pages.
  /// [value] List of models.
  ListConnectionModelsResult({this.nextLink, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() {
        final guardedValue = value;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          EndpointModelPropertiesResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
    };
  }

  factory ListConnectionModelsResult.fromMap(Map<String, dynamic> map) {
    return ListConnectionModelsResult(
      nextLink: (() {
        final guardedValue = map['nextLink'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<EndpointModelPropertiesResponse>(
          guardedValue,
          (value) => EndpointModelPropertiesResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
