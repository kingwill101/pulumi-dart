// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_chart_repositories_repository.dart';

/// Result data returned by getChartRepositories.
class GetChartRepositoriesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String instanceId;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetChartRepositoriesRepository> repositories;

  /// Creates a new [GetChartRepositoriesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [repositories] Required.
  GetChartRepositoriesResult({
    required this.id,
    required this.ids,
    required this.instanceId,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.repositories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'repositories': pulumi.Input.encodeList<GetChartRepositoriesRepository, Map<String, dynamic>>(repositories, (value) => value.toMap()),
    };
  }

  factory GetChartRepositoriesResult.fromMap(Map<String, dynamic> map) {
    return GetChartRepositoriesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      repositories: pulumi.Input.decodeList<GetChartRepositoriesRepository>(map['repositories'], (value) => GetChartRepositoriesRepository.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

