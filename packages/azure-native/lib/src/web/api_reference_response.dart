// ignore_for_file: unused_element, unnecessary_cast


class ApiReferenceResponse {
  /// Brand color
  final String? brandColor;
  /// The custom API description
  final String? description;
  /// The display name
  final String? displayName;
  /// The icon URI
  final String? iconUri;
  /// Resource reference id
  final String? id;
  /// The name of the API
  final String? name;
  /// The JSON representation of the swagger
  final dynamic swagger;
  /// Resource reference type
  final String? type;

  /// Creates a new [ApiReferenceResponse].
  /// [brandColor] Brand color
  /// [description] The custom API description
  /// [displayName] The display name
  /// [iconUri] The icon URI
  /// [id] Resource reference id
  /// [name] The name of the API
  /// [swagger] The JSON representation of the swagger
  /// [type] Resource reference type
  ApiReferenceResponse({
    this.brandColor,
    this.description,
    this.displayName,
    this.iconUri,
    this.id,
    this.name,
    this.swagger,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brandColor': ?brandColor,
      'description': ?description,
      'displayName': ?displayName,
      'iconUri': ?iconUri,
      'id': ?id,
      'name': ?name,
      'swagger': ?swagger,
      'type': ?type,
    };
  }

  factory ApiReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ApiReferenceResponse(
      brandColor: map['brandColor'] == null ? null : map['brandColor'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      iconUri: map['iconUri'] == null ? null : map['iconUri'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      swagger: map['swagger'] == null ? null : map['swagger'],
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

