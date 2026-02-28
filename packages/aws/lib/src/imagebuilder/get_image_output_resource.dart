// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_output_resource_ami.dart';
import 'get_image_output_resource_container.dart';

class GetImageOutputResource {
  /// Set of objects with each Amazon Machine Image (AMI) created.
  final List<GetImageOutputResourceAmi> amis;

  /// Set of objects with each container image created and stored in the output repository.
  final List<GetImageOutputResourceContainer> containers;

  /// Creates a new [GetImageOutputResource].
  /// [amis] Set of objects with each Amazon Machine Image (AMI) created.
  /// [containers] Set of objects with each container image created and stored in the output repository.
  GetImageOutputResource({
    required this.amis,
    required this.containers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['amis'] = pulumi.Input.encodeList<GetImageOutputResourceAmi,
        Map<String, dynamic>>(amis, (value) => value.toMap());
    map['containers'] = pulumi.Input.encodeList<GetImageOutputResourceContainer,
        Map<String, dynamic>>(containers, (value) => value.toMap());
    return map;
  }

  factory GetImageOutputResource.fromMap(Map<String, dynamic> map) {
    return GetImageOutputResource(
      amis: pulumi.Input.decodeList<GetImageOutputResourceAmi>(
          map['amis'],
          (value) => GetImageOutputResourceAmi.fromMap(
              (value as Map).cast<String, dynamic>())),
      containers: pulumi.Input.decodeList<GetImageOutputResourceContainer>(
          map['containers'],
          (value) => GetImageOutputResourceContainer.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
