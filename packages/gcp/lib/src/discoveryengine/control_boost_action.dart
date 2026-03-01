// ignore_for_file: unused_element, unnecessary_cast

import 'control_boost_action_interpolation_boost_spec.dart';

class ControlBoostAction {
  /// The data store to boost.
  final String dataStore;

  /// The filter to apply to the search results.
  final String filter;

  /// The fixed boost value to apply to the search results. Positive values will increase the relevance of the results, while negative values will decrease the relevance. The value must be between -100 and 100.
  final double? fixedBoost;

  /// The interpolation boost specification to apply to the search results.
  /// Structure is documented below.
  final ControlBoostActionInterpolationBoostSpec? interpolationBoostSpec;

  /// Creates a new [ControlBoostAction].
  /// [dataStore] The data store to boost.
  /// [filter] The filter to apply to the search results.
  /// [fixedBoost] The fixed boost value to apply to the search results. Positive values will increase the relevance of the results, while negative values will decrease the relevance. The value must be between -100 and 100.
  /// [interpolationBoostSpec] The interpolation boost specification to apply to the search results.
  ControlBoostAction({
    required this.dataStore,
    required this.filter,
    this.fixedBoost,
    this.interpolationBoostSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStore': dataStore,
      'filter': filter,
      'fixedBoost': ?fixedBoost,
      'interpolationBoostSpec': ?interpolationBoostSpec == null
          ? null
          : interpolationBoostSpec!.toMap(),
    };
  }

  factory ControlBoostAction.fromMap(Map<String, dynamic> map) {
    return ControlBoostAction(
      dataStore: map['dataStore'] as String,
      filter: map['filter'] as String,
      fixedBoost: map['fixedBoost'] == null
          ? null
          : map['fixedBoost'] as double,
      interpolationBoostSpec: map['interpolationBoostSpec'] == null
          ? null
          : ControlBoostActionInterpolationBoostSpec.fromMap(
              (map['interpolationBoostSpec'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
