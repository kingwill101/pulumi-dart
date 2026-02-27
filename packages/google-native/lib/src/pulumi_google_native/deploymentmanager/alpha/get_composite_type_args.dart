// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCompositeType.
class GetCompositeTypeArgs {
  final pulumi.Input<String> compositeType;
  final pulumi.Input<String>? project;

  GetCompositeTypeArgs({
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

  factory GetCompositeTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetCompositeTypeArgs(
      compositeType: pulumi.Input.asInput<String>(map['compositeType']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
