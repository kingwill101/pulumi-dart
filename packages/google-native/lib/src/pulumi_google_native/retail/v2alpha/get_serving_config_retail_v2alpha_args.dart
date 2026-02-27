// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getServingConfig.
class GetServingConfigRetailV2alphaArgs {
  final pulumi.Input<String> catalogId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> servingConfigId;

  GetServingConfigRetailV2alphaArgs({
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

  factory GetServingConfigRetailV2alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetServingConfigRetailV2alphaArgs(
      catalogId: pulumi.Input.asInput<String>(map['catalogId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      servingConfigId: pulumi.Input.asInput<String>(map['servingConfigId']),
    );
  }
}
