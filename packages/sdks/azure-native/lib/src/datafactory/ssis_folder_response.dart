// ignore_for_file: unused_element, unnecessary_cast


/// Ssis folder.
class SsisFolderResponse {
  /// Metadata description.
  final String? description;
  /// Metadata id.
  final double? id;
  /// Metadata name.
  final String? name;
  /// The type of SSIS object metadata.
  /// Expected value is 'Folder'.
  final String type;

  /// Creates a new [SsisFolderResponse].
  /// [description] Metadata description.
  /// [id] Metadata id.
  /// [name] Metadata name.
  /// [type] The type of SSIS object metadata.
  SsisFolderResponse({
    this.description,
    this.id,
    this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'type': type,
    };
  }

  factory SsisFolderResponse.fromMap(Map<String, dynamic> map) {
    return SsisFolderResponse(
      description: map['description'] == null ? null : map['description'] as String,
      id: map['id'] == null ? null : map['id'] as double,
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] as String,
    );
  }
}

