// ignore_for_file: unused_element, unnecessary_cast


class GetImagesImage {
  final String architecture;
  final String created;
  final String deprecated;
  final String description;
  final int id;
  final Map<String, String> labels;
  final String name;
  final String osFlavor;
  final String osVersion;
  final bool rapidDeploy;
  final String? selector;
  final String type;

  /// Creates a new [GetImagesImage].
  /// [architecture] Required.
  /// [created] Required.
  /// [deprecated] Required.
  /// [description] Required.
  /// [id] Required.
  /// [labels] Required.
  /// [name] Required.
  /// [osFlavor] Required.
  /// [osVersion] Required.
  /// [rapidDeploy] Required.
  /// [selector] Optional.
  /// [type] Required.
  GetImagesImage({
    required this.architecture,
    required this.created,
    required this.deprecated,
    required this.description,
    required this.id,
    required this.labels,
    required this.name,
    required this.osFlavor,
    required this.osVersion,
    required this.rapidDeploy,
    this.selector,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': architecture,
      'created': created,
      'deprecated': deprecated,
      'description': description,
      'id': id,
      'labels': labels,
      'name': name,
      'osFlavor': osFlavor,
      'osVersion': osVersion,
      'rapidDeploy': rapidDeploy,
      'selector': ?selector,
      'type': type,
    };
  }

  factory GetImagesImage.fromMap(Map<String, dynamic> map) {
    return GetImagesImage(
      architecture: map['architecture'] as String,
      created: map['created'] as String,
      deprecated: map['deprecated'] as String,
      description: map['description'] as String,
      id: map['id'] as int,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      osFlavor: map['osFlavor'] as String,
      osVersion: map['osVersion'] as String,
      rapidDeploy: map['rapidDeploy'] as bool,
      selector: map['selector'] == null ? null : map['selector'] as String,
      type: map['type'] as String,
    );
  }
}

