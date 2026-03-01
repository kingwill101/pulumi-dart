// ignore_for_file: unused_element, unnecessary_cast


class GetDicomServicePrivateEndpoint {
  /// The ID of the Healthcare DICOM Service.
  final String id;
  /// The name of the Healthcare DICOM Service
  final String name;

  /// Creates a new [GetDicomServicePrivateEndpoint].
  /// [id] The ID of the Healthcare DICOM Service.
  /// [name] The name of the Healthcare DICOM Service
  GetDicomServicePrivateEndpoint({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory GetDicomServicePrivateEndpoint.fromMap(Map<String, dynamic> map) {
    return GetDicomServicePrivateEndpoint(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}

