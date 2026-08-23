// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssis_environment_response.dart';

/// Result data returned by getIntegrationRuntimeObjectMetadatum.
class GetIntegrationRuntimeObjectMetadatumResult {
  /// The link to the next page of items
  final String? nextLink;
  /// The SsisObjectMetadata items on this page
  final List<SsisEnvironmentResponse> value;

  /// Creates a new [GetIntegrationRuntimeObjectMetadatumResult].
  /// [nextLink] The link to the next page of items
  /// [value] The SsisObjectMetadata items on this page
  const GetIntegrationRuntimeObjectMetadatumResult({
    this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': pulumi.Input.encodeList<SsisEnvironmentResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory GetIntegrationRuntimeObjectMetadatumResult.fromMap(Map<String, dynamic> map) {
    return GetIntegrationRuntimeObjectMetadatumResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: pulumi.Input.decodeList<SsisEnvironmentResponse>(map['value']!, (value) => SsisEnvironmentResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
