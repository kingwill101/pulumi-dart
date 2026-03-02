// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryExternalConnections {
  /// The name of the external connection associated with a repository.
  final pulumi.Input<String> externalConnectionName;
  final pulumi.Input<String>? packageFormat;
  final pulumi.Input<String>? status;

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
      externalConnectionName: (map['externalConnectionName'] as String).input(),
      packageFormat: map['packageFormat'] == null ? null : (map['packageFormat'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

