// ignore_for_file: unused_element, unnecessary_cast


class GetNestServiceInstancesServiceInstanceServiceServiceInfo {
  /// The image of the service.
  final String image;
  /// The locale of the service.
  final String locale;
  /// The name of the service.
  final String name;
  /// The short description of the service.
  final String shortDescription;

  /// Creates a new [GetNestServiceInstancesServiceInstanceServiceServiceInfo].
  /// [image] The image of the service.
  /// [locale] The locale of the service.
  /// [name] The name of the service.
  /// [shortDescription] The short description of the service.
  GetNestServiceInstancesServiceInstanceServiceServiceInfo({
    required this.image,
    required this.locale,
    required this.name,
    required this.shortDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'locale': locale,
      'name': name,
      'shortDescription': shortDescription,
    };
  }

  factory GetNestServiceInstancesServiceInstanceServiceServiceInfo.fromMap(Map<String, dynamic> map) {
    return GetNestServiceInstancesServiceInstanceServiceServiceInfo(
      image: map['image'] as String,
      locale: map['locale'] as String,
      name: map['name'] as String,
      shortDescription: map['shortDescription'] as String,
    );
  }
}

