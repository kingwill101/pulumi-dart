// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_output_resource_ami.dart';
import 'image_output_resource_container.dart';

class ImageOutputResource {
  /// Set of objects with each Amazon Machine Image (AMI) created.
  final pulumi.Input<List<ImageOutputResourceAmi>>? amis;
  /// Set of objects with each container image created and stored in the output repository.
  final pulumi.Input<List<ImageOutputResourceContainer>>? containers;

  /// Creates a new [ImageOutputResource].
  /// [amis] Set of objects with each Amazon Machine Image (AMI) created.
  /// [containers] Set of objects with each container image created and stored in the output repository.
  ImageOutputResource({
    this.amis,
    this.containers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amis': ?pulumi.Input.mapOptionalInputValue<List<ImageOutputResourceAmi>, List<Map<String, dynamic>>>(amis, (value) => pulumi.Input.encodeList<ImageOutputResourceAmi, Map<String, dynamic>>(value, (value) => value.toMap())),
      'containers': ?pulumi.Input.mapOptionalInputValue<List<ImageOutputResourceContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<ImageOutputResourceContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ImageOutputResource.fromMap(Map<String, dynamic> map) {
    return ImageOutputResource(
      amis: map['amis'] == null ? null : (pulumi.Input.decodeList<ImageOutputResourceAmi>(map['amis'], (value) => ImageOutputResourceAmi.fromMap((value as Map).cast<String, dynamic>()))).input(),
      containers: map['containers'] == null ? null : (pulumi.Input.decodeList<ImageOutputResourceContainer>(map['containers'], (value) => ImageOutputResourceContainer.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

