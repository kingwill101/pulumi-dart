// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssis_environment_response.dart';

/// Result data returned by getIntegrationRuntimeObjectMetadatum.
class GetIntegrationRuntimeObjectMetadatumResult {
  /// The link to the next page of results, if any remaining results exist.
  final String? nextLink;
  /// List of SSIS object metadata.
  final List<SsisEnvironmentResponse>? value;

  /// Creates a new [GetIntegrationRuntimeObjectMetadatumResult].
  /// [nextLink] The link to the next page of results, if any remaining results exist.
  /// [value] List of SSIS object metadata.
  GetIntegrationRuntimeObjectMetadatumResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<SsisEnvironmentResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory GetIntegrationRuntimeObjectMetadatumResult.fromMap(Map<String, dynamic> map) {
    return GetIntegrationRuntimeObjectMetadatumResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<SsisEnvironmentResponse>(map['value'], (value) => SsisEnvironmentResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

