// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getImage.
class GetImageArgs2 {
  final Input<String> image;
  final Input<String>? project;

  GetImageArgs2({
    required this.image,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['image'] = image;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetImageArgs2.fromMap(Map<String, dynamic> map) {
    return GetImageArgs2(
      image: Input.asInput<String>(map['image']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
