// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_get_data_quality_rules_get_data_quality_rules_args_doc}
/// Arguments for getDataQualityRules.
/// {@endtemplate}
/// {@macro pulumi_dataplex_get_data_quality_rules_get_data_quality_rules_args_doc}
class GetDataQualityRulesArgs {
  /// The ID of the data profile scan which the generation of quality rules will be basing on.
  final pulumi.Input<String> dataScanId;

  /// The location where the referenced data profile scan resides.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the datascan belongs.
  final pulumi.Input<String>? project;

  /// Creates a new [GetDataQualityRulesArgs].
  /// [dataScanId] The ID of the data profile scan which the generation of quality rules will be basing on.
  /// [location] The location where the referenced data profile scan resides.
  /// [project] The ID of the project in which the datascan belongs.
  GetDataQualityRulesArgs({
    required String dataScanId,
    String? location,
    String? project,
  }) : dataScanId = pulumi.Input.asInput<String>(dataScanId),
       location = pulumi.Input.asOptionalInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataScanId': dataScanId,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetDataQualityRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetDataQualityRulesArgs(
      dataScanId: map['dataScanId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
