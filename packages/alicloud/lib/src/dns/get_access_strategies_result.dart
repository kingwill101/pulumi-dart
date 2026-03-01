// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_strategies_strategy.dart';

/// Result data returned by getAccessStrategies.
class GetAccessStrategiesResult {
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String instanceId;
  final String? lang;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetAccessStrategiesStrategy> strategies;
  final String strategyMode;

  /// Creates a new [GetAccessStrategiesResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Required.
  /// [lang] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [strategies] Required.
  /// [strategyMode] Required.
  GetAccessStrategiesResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    required this.instanceId,
    this.lang,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.strategies,
    required this.strategyMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'lang': ?lang,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'strategies': pulumi.Input.encodeList<GetAccessStrategiesStrategy, Map<String, dynamic>>(strategies, (value) => value.toMap()),
      'strategyMode': strategyMode,
    };
  }

  factory GetAccessStrategiesResult.fromMap(Map<String, dynamic> map) {
    return GetAccessStrategiesResult(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      lang: map['lang'] == null ? null : map['lang'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      strategies: pulumi.Input.decodeList<GetAccessStrategiesStrategy>(map['strategies'], (value) => GetAccessStrategiesStrategy.fromMap((value as Map).cast<String, dynamic>())),
      strategyMode: map['strategyMode'] as String,
    );
  }
}

