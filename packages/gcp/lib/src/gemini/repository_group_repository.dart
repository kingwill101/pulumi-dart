// ignore_for_file: unused_element, unnecessary_cast

class RepositoryGroupRepository {
  /// Required. The Git branch pattern used for indexing in RE2 syntax.
  /// See https://github.com/google/re2/wiki/syntax for syntax.
  final String branchPattern;

  /// Required. The DeveloperConnect repository full resource name, relative resource name
  /// or resource URL to be indexed.
  final String resource;

  /// Creates a new [RepositoryGroupRepository].
  /// [branchPattern] Required. The Git branch pattern used for indexing in RE2 syntax.
  /// [resource] Required. The DeveloperConnect repository full resource name, relative resource name
  RepositoryGroupRepository({
    required this.branchPattern,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchPattern': branchPattern,
      'resource': resource,
    };
  }

  factory RepositoryGroupRepository.fromMap(Map<String, dynamic> map) {
    return RepositoryGroupRepository(
      branchPattern: map['branchPattern'] as String,
      resource: map['resource'] as String,
    );
  }
}
