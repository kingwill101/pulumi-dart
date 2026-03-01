// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repositories_repository.dart';

/// Result data returned by getRepositories.
class GetRepositoriesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String? nameFilter;
  final String? project;
  /// A list of all retrieved Artifact Registry repositories. Structure is defined below.
  final List<GetRepositoriesRepository> repositories;

  /// Creates a new [GetRepositoriesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [nameFilter] Optional.
  /// [project] Optional.
  /// [repositories] A list of all retrieved Artifact Registry repositories. Structure is defined below.
  GetRepositoriesResult({
    required this.id,
    required this.location,
    this.nameFilter,
    this.project,
    required this.repositories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'nameFilter': ?nameFilter,
      'project': ?project,
      'repositories': pulumi.Input.encodeList<GetRepositoriesRepository, Map<String, dynamic>>(repositories, (value) => value.toMap()),
    };
  }

  factory GetRepositoriesResult.fromMap(Map<String, dynamic> map) {
    return GetRepositoriesResult(
      id: map['id'] as String,
      location: map['location'] as String,
      nameFilter: map['nameFilter'] == null ? null : map['nameFilter'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      repositories: pulumi.Input.decodeList<GetRepositoriesRepository>(map['repositories'], (value) => GetRepositoriesRepository.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

