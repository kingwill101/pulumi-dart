// ignore_for_file: unused_element, unnecessary_cast

class RepositoryExternalConnections {
  /// The name of the external connection associated with a repository.
  final String externalConnectionName;
  final String? packageFormat;
  final String? status;

  RepositoryExternalConnections({
    required this.externalConnectionName,
    this.packageFormat,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['externalConnectionName'] = externalConnectionName;
    final packageFormatValue = packageFormat;
    if (packageFormatValue != null) {
      map['packageFormat'] = packageFormatValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory RepositoryExternalConnections.fromMap(Map<String, dynamic> map) {
    return RepositoryExternalConnections(
      externalConnectionName: map['externalConnectionName'] as String,
      packageFormat:
          map['packageFormat'] == null ? null : map['packageFormat'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
