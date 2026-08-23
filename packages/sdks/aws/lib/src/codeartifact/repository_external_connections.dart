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
  const RepositoryExternalConnections({
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
      externalConnectionName: pulumi.Input.fromValue(map['externalConnectionName'] as String),
      packageFormat: (() { final guardedValue = map['packageFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
