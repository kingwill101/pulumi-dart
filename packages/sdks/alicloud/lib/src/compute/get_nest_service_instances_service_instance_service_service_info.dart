// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNestServiceInstancesServiceInstanceServiceServiceInfo {
  /// The image of the service.
  final pulumi.Input<String> image;
  /// The locale of the service.
  final pulumi.Input<String> locale;
  /// The name of the service.
  final pulumi.Input<String> name;
  /// The short description of the service.
  final pulumi.Input<String> shortDescription;

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
      image: pulumi.Input.fromValue(map['image'] as String),
      locale: pulumi.Input.fromValue(map['locale'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      shortDescription: pulumi.Input.fromValue(map['shortDescription'] as String),
    );
  }
}

