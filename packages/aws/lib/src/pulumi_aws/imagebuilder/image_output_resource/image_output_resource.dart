// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../image_output_resource_ami/image_output_resource_ami.dart';
import '../image_output_resource_container/image_output_resource_container.dart';

class ImageOutputResource {
  /// Set of objects with each Amazon Machine Image (AMI) created.
  final List<ImageOutputResourceAmi>? amis;

  /// Set of objects with each container image created and stored in the output repository.
  final List<ImageOutputResourceContainer>? containers;

  ImageOutputResource({
    this.amis,
    this.containers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final amisValue = amis;
    if (amisValue != null) {
      map['amis'] =
          pulumi.Input.encodeList<ImageOutputResourceAmi, Map<String, dynamic>>(
              amisValue, (value) => value.toMap());
    }
    final containersValue = containers;
    if (containersValue != null) {
      map['containers'] = pulumi.Input.encodeList<ImageOutputResourceContainer,
          Map<String, dynamic>>(containersValue, (value) => value.toMap());
    }
    return map;
  }

  factory ImageOutputResource.fromMap(Map<String, dynamic> map) {
    return ImageOutputResource(
      amis: map['amis'] == null
          ? null
          : pulumi.Input.decodeList<ImageOutputResourceAmi>(
              map['amis'],
              (value) => ImageOutputResourceAmi.fromMap(
                  (value as Map).cast<String, dynamic>())),
      containers: map['containers'] == null
          ? null
          : pulumi.Input.decodeList<ImageOutputResourceContainer>(
              map['containers'],
              (value) => ImageOutputResourceContainer.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
