// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationService {
  final pulumi.Input<String>? id;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? status;
  final pulumi.Input<String>? version;

  /// Creates a new [ApplicationService].
  /// [id] Optional.
  /// [name] Optional.
  /// [status] Optional.
  /// [version] Optional.
  ApplicationService({
    this.id,
    this.name,
    this.status,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'status': ?status,
      'version': ?version,
    };
  }

  factory ApplicationService.fromMap(Map<String, dynamic> map) {
    return ApplicationService(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

