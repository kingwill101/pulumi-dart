// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_model_properties_response.dart';

/// Result data returned by listConnectionAllModels.
class ListConnectionAllModelsResult {
  /// The link to the next page constructed using the continuationToken.  If null, there are no additional pages.
  final String? nextLink;
  /// List of models.
  final List<EndpointModelPropertiesResponse>? value;

  /// Creates a new [ListConnectionAllModelsResult].
  /// [nextLink] The link to the next page constructed using the continuationToken.  If null, there are no additional pages.
  /// [value] List of models.
  ListConnectionAllModelsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<EndpointModelPropertiesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListConnectionAllModelsResult.fromMap(Map<String, dynamic> map) {
    return ListConnectionAllModelsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<EndpointModelPropertiesResponse>(guardedValue, (value) => EndpointModelPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

