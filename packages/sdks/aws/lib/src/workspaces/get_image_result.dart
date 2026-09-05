// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getImage.
class GetImageResult {
  /// The description of the image.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? imageId;
  /// The name of the image.
  final String? name;
  final String? operatingSystemType;
  final String? region;
  /// Specifies whether the image is running on dedicated hardware. When Bring Your Own License (BYOL) is enabled, this value is set to DEDICATED. For more information, see [Bring Your Own Windows Desktop Images](https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html).
  final String? requiredTenancy;
  /// The status of the image.
  final String? state;

  /// Creates a new [GetImageResult].
  /// [description] The description of the image.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageId] Optional.
  /// [name] The name of the image.
  /// [operatingSystemType] Optional.
  /// [region] Optional.
  /// [requiredTenancy] Specifies whether the image is running on dedicated hardware. When Bring Your Own License (BYOL) is enabled, this value is set to DEDICATED. For more information, see [Bring Your Own Windows Desktop Images](https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html).
  /// [state] The status of the image.
  const GetImageResult({
    this.description,
    this.id,
    this.imageId,
    this.name,
    this.operatingSystemType,
    this.region,
    this.requiredTenancy,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'id': ?id,
      'imageId': ?imageId,
      'name': ?name,
      'operatingSystemType': ?operatingSystemType,
      'region': ?region,
      'requiredTenancy': ?requiredTenancy,
      'state': ?state,
    };
  }

  factory GetImageResult.fromMap(Map<String, dynamic> map) {
    return GetImageResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      operatingSystemType: (() { final guardedValue = map['operatingSystemType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requiredTenancy: (() { final guardedValue = map['requiredTenancy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
