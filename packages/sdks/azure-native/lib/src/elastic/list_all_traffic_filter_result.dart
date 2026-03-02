// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_traffic_filter_response.dart';

/// Result data returned by listAllTrafficFilter.
class ListAllTrafficFilterResult {
  /// List of elastic traffic filters in the account
  final List<ElasticTrafficFilterResponse>? rulesets;

  /// Creates a new [ListAllTrafficFilterResult].
  /// [rulesets] List of elastic traffic filters in the account
  ListAllTrafficFilterResult({
    this.rulesets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rulesets': ?rulesets == null ? null : pulumi.Input.encodeList<ElasticTrafficFilterResponse, Map<String, dynamic>>(rulesets!, (value) => value.toMap()),
    };
  }

  factory ListAllTrafficFilterResult.fromMap(Map<String, dynamic> map) {
    return ListAllTrafficFilterResult(
      rulesets: map['rulesets'] == null ? null : pulumi.Input.decodeList<ElasticTrafficFilterResponse>(map['rulesets']!, (value) => ElasticTrafficFilterResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

