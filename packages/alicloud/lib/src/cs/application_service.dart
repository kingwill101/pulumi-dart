// ignore_for_file: unused_element, unnecessary_cast


class ApplicationService {
  final String? id;
  final String? name;
  final String? status;
  final String? version;

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
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

