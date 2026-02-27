// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ServingConfig.
class ServingConfigArgs {
  /// The resource IDs of the boost controls to be applied.
  final Input<List<String>>? boostControlIds;

  /// The collection ID. Currently only accepts "default_collection".
  final Input<String>? collectionId;

  /// The ID of the engine associated with the serving config.
  final Input<String> engineId;

  /// The resource IDs of the filter controls to be applied.
  final Input<List<String>>? filterControlIds;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The resource IDs of the promote controls to be applied.
  final Input<List<String>>? promoteControlIds;

  /// The resource IDs of the redirect controls to be applied.
  final Input<List<String>>? redirectControlIds;

  /// 'The unique ID of the serving config. Currently only accepts "default_search".'
  final Input<String>? servingConfigId;

  /// The resource IDs of the synonyms controls to be applied.
  final Input<List<String>>? synonymsControlIds;

  ServingConfigArgs({
    this.boostControlIds,
    this.collectionId,
    required this.engineId,
    this.filterControlIds,
    required this.location,
    this.project,
    this.promoteControlIds,
    this.redirectControlIds,
    this.servingConfigId,
    this.synonymsControlIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final boostControlIdsValue = boostControlIds;
    if (boostControlIdsValue != null) {
      map['boostControlIds'] = boostControlIdsValue;
    }
    final collectionIdValue = collectionId;
    if (collectionIdValue != null) {
      map['collectionId'] = collectionIdValue;
    }
    map['engineId'] = engineId;
    final filterControlIdsValue = filterControlIds;
    if (filterControlIdsValue != null) {
      map['filterControlIds'] = filterControlIdsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final promoteControlIdsValue = promoteControlIds;
    if (promoteControlIdsValue != null) {
      map['promoteControlIds'] = promoteControlIdsValue;
    }
    final redirectControlIdsValue = redirectControlIds;
    if (redirectControlIdsValue != null) {
      map['redirectControlIds'] = redirectControlIdsValue;
    }
    final servingConfigIdValue = servingConfigId;
    if (servingConfigIdValue != null) {
      map['servingConfigId'] = servingConfigIdValue;
    }
    final synonymsControlIdsValue = synonymsControlIds;
    if (synonymsControlIdsValue != null) {
      map['synonymsControlIds'] = synonymsControlIdsValue;
    }
    return map;
  }

  factory ServingConfigArgs.fromMap(Map<String, dynamic> map) {
    return ServingConfigArgs(
      boostControlIds:
          Input.asOptionalInput<List<String>>(map['boostControlIds']),
      collectionId: Input.asOptionalInput<String>(map['collectionId']),
      engineId: Input.asInput<String>(map['engineId']),
      filterControlIds:
          Input.asOptionalInput<List<String>>(map['filterControlIds']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      promoteControlIds:
          Input.asOptionalInput<List<String>>(map['promoteControlIds']),
      redirectControlIds:
          Input.asOptionalInput<List<String>>(map['redirectControlIds']),
      servingConfigId: Input.asOptionalInput<String>(map['servingConfigId']),
      synonymsControlIds:
          Input.asOptionalInput<List<String>>(map['synonymsControlIds']),
    );
  }
}
