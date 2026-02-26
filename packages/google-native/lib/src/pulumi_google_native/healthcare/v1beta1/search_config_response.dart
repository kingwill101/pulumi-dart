// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'search_parameter_response.dart';

/// Contains the configuration for FHIR search.
class SearchConfigResponse {
  /// A list of search parameters in this FHIR store that are used to configure this FHIR store.
  final List<SearchParameterResponse> searchParameters;

  SearchConfigResponse({
    required this.searchParameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['searchParameters'] =
        Input.encodeList<SearchParameterResponse, Map<String, dynamic>>(
            searchParameters, (value) => value.toMap());
    return map;
  }

  factory SearchConfigResponse.fromMap(Map<String, dynamic> map) {
    return SearchConfigResponse(
      searchParameters: Input.decodeList<SearchParameterResponse>(
          map['searchParameters'],
          (value) => SearchParameterResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
