// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_response.dart';

class CompositeFilterResponse {
  /// The logic operator of the sub filter.
  final String logicOperator;

  /// Sub filters.
  final List<FilterResponse> subFilters;

  /// Creates a new [CompositeFilterResponse].
  /// [logicOperator] The logic operator of the sub filter.
  /// [subFilters] Sub filters.
  CompositeFilterResponse({
    required this.logicOperator,
    required this.subFilters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logicOperator'] = logicOperator;
    map['subFilters'] =
        pulumi.Input.encodeList<FilterResponse, Map<String, dynamic>>(
            subFilters, (value) => value.toMap());
    return map;
  }

  factory CompositeFilterResponse.fromMap(Map<String, dynamic> map) {
    return CompositeFilterResponse(
      logicOperator: map['logicOperator'] as String,
      subFilters: pulumi.Input.decodeList<FilterResponse>(
          map['subFilters'],
          (value) =>
              FilterResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
