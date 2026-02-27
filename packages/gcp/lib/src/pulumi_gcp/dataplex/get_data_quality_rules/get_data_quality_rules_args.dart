// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDataQualityRules.
class GetDataQualityRulesArgs {
  /// The ID of the data profile scan which the generation of quality rules will be basing on.
  final pulumi.Input<String> dataScanId;

  /// The location where the referenced data profile scan resides.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the datascan belongs.
  final pulumi.Input<String>? project;

  GetDataQualityRulesArgs({
    required this.dataScanId,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataScanId'] = dataScanId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDataQualityRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetDataQualityRulesArgs(
      dataScanId: pulumi.Input.asInput<String>(map['dataScanId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
