// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'search_parameter.dart';

/// Contains the configuration for FHIR search.
class SearchConfig {
  /// A list of search parameters in this FHIR store that are used to configure this FHIR store.
  final List<SearchParameter>? searchParameters;

  SearchConfig({
    this.searchParameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final searchParametersValue = searchParameters;
    if (searchParametersValue != null) {
      map['searchParameters'] =
          Input.encodeList<SearchParameter, Map<String, dynamic>>(
              searchParametersValue, (value) => value.toMap());
    }
    return map;
  }

  factory SearchConfig.fromMap(Map<String, dynamic> map) {
    return SearchConfig(
      searchParameters: map['searchParameters'] == null
          ? null
          : Input.decodeList<SearchParameter>(
              map['searchParameters'],
              (value) => SearchParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
