// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getModel.
class GetModelRetailV2alphaArgs {
  final pulumi.Input<String> catalogId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> modelId;
  final pulumi.Input<String>? project;

  GetModelRetailV2alphaArgs({
    required this.catalogId,
    required this.location,
    required this.modelId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['catalogId'] = catalogId;
    map['location'] = location;
    map['modelId'] = modelId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetModelRetailV2alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetModelRetailV2alphaArgs(
      catalogId: pulumi.Input.asInput<String>(map['catalogId']),
      location: pulumi.Input.asInput<String>(map['location']),
      modelId: pulumi.Input.asInput<String>(map['modelId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
