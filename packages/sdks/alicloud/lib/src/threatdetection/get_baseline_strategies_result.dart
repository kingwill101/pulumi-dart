// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_baseline_strategies_strategy.dart';

/// Result data returned by getBaselineStrategies.
class GetBaselineStrategiesResult {
  /// The type of policy. Value:
  /// * **common**: standard policy
  /// * **custom**: custom policy
  final String? customType;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Baseline Strategy IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of name of Baseline Strategys.
  final List<String> names;
  final String? outputFile;
  final List<GetBaselineStrategiesStrategy> strategies;
  final String? strategyIds;

  /// Creates a new [GetBaselineStrategiesResult].
  /// [customType] The type of policy. Value:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Baseline Strategy IDs.
  /// [nameRegex] Optional.
  /// [names] A list of name of Baseline Strategys.
  /// [outputFile] Optional.
  /// [strategies] Required.
  /// [strategyIds] Optional.
  GetBaselineStrategiesResult({
    this.customType,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.strategies,
    this.strategyIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customType': ?customType,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'strategies': pulumi.Input.encodeList<GetBaselineStrategiesStrategy, Map<String, dynamic>>(strategies, (value) => value.toMap()),
      'strategyIds': ?strategyIds,
    };
  }

  factory GetBaselineStrategiesResult.fromMap(Map<String, dynamic> map) {
    return GetBaselineStrategiesResult(
      customType: (() { final guardedValue = map['customType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      strategies: pulumi.Input.decodeList<GetBaselineStrategiesStrategy>(map['strategies']!, (value) => GetBaselineStrategiesStrategy.fromMap((value as Map).cast<String, dynamic>())),
      strategyIds: (() { final guardedValue = map['strategyIds']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

