// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getImage.
class GetImageArgs {
  final Input<String> image;
  final Input<String>? project;

  GetImageArgs({
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

  factory GetImageArgs.fromMap(Map<String, dynamic> map) {
    return GetImageArgs(
      image: Input.asInput<String>(map['image']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
