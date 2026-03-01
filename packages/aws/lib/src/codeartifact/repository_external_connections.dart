// ignore_for_file: unused_element, unnecessary_cast

class RepositoryExternalConnections {
  /// The name of the external connection associated with a repository.
  final String externalConnectionName;
  final String? packageFormat;
  final String? status;

  /// Creates a new [RepositoryExternalConnections].
  /// [externalConnectionName] The name of the external connection associated with a repository.
  /// [packageFormat] Optional.
  /// [status] Optional.
  RepositoryExternalConnections({
    required this.externalConnectionName,
    this.packageFormat,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalConnectionName': externalConnectionName,
      'packageFormat': ?packageFormat,
      'status': ?status,
    };
  }

  factory RepositoryExternalConnections.fromMap(Map<String, dynamic> map) {
    return RepositoryExternalConnections(
      externalConnectionName: map['externalConnectionName'] as String,
      packageFormat: map['packageFormat'] == null
          ? null
          : map['packageFormat'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
