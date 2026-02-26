// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getServingConfig.
class GetServingConfigArgs {
  final Input<String> catalogId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> servingConfigId;

  GetServingConfigArgs({
    required this.catalogId,
    required this.location,
    this.project,
    required this.servingConfigId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['catalogId'] = catalogId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['servingConfigId'] = servingConfigId;
    return map;
  }

  factory GetServingConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetServingConfigArgs(
      catalogId: Input.asInput<String>(map['catalogId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      servingConfigId: Input.asInput<String>(map['servingConfigId']),
    );
  }
}
