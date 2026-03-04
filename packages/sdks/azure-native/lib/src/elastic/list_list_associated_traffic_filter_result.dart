// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_traffic_filter_response.dart';

/// Result data returned by listListAssociatedTrafficFilter.
class ListListAssociatedTrafficFilterResult {
  /// List of elastic traffic filters in the account
  final List<ElasticTrafficFilterResponse>? rulesets;

  /// Creates a new [ListListAssociatedTrafficFilterResult].
  /// [rulesets] List of elastic traffic filters in the account
  ListListAssociatedTrafficFilterResult({this.rulesets});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rulesets': ?(() {
        final guardedValue = rulesets;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ElasticTrafficFilterResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
    };
  }

  factory ListListAssociatedTrafficFilterResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListListAssociatedTrafficFilterResult(
      rulesets: (() {
        final guardedValue = map['rulesets'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ElasticTrafficFilterResponse>(
          guardedValue,
          (value) => ElasticTrafficFilterResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
