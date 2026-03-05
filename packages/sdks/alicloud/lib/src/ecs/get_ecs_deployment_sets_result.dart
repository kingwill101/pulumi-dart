// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_deployment_sets_set.dart';

/// Result data returned by getEcsDeploymentSets.
class GetEcsDeploymentSetsResult {
  final String? deploymentSetName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetEcsDeploymentSetsSet> sets;
  final String? strategy;

  /// Creates a new [GetEcsDeploymentSetsResult].
  /// [deploymentSetName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [sets] Required.
  /// [strategy] Optional.
  GetEcsDeploymentSetsResult({
    this.deploymentSetName,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.sets,
    this.strategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentSetName': ?deploymentSetName,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'sets': pulumi.Input.encodeList<GetEcsDeploymentSetsSet, Map<String, dynamic>>(sets, (value) => value.toMap()),
      'strategy': ?strategy,
    };
  }

  factory GetEcsDeploymentSetsResult.fromMap(Map<String, dynamic> map) {
    return GetEcsDeploymentSetsResult(
      deploymentSetName: (() { final guardedValue = map['deploymentSetName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sets: pulumi.Input.decodeList<GetEcsDeploymentSetsSet>(map['sets']!, (value) => GetEcsDeploymentSetsSet.fromMap((value as Map).cast<String, dynamic>())),
      strategy: (() { final guardedValue = map['strategy']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

