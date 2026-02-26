// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCompositeType.
class GetCompositeTypeArgs2 {
  final Input<String> compositeType;
  final Input<String>? project;

  GetCompositeTypeArgs2({
    required this.compositeType,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['compositeType'] = compositeType;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCompositeTypeArgs2.fromMap(Map<String, dynamic> map) {
    return GetCompositeTypeArgs2(
      compositeType: Input.asInput<String>(map['compositeType']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
