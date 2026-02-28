// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discoveryengine_serving_config_serving_config_args_doc}
/// The set of arguments for ServingConfig.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_serving_config_serving_config_args_doc}
class ServingConfigArgs {
  /// The resource IDs of the boost controls to be applied.
  final pulumi.Input<List<String>>? boostControlIds;

  /// The collection ID. Currently only accepts "default_collection".
  final pulumi.Input<String>? collectionId;

  /// The ID of the engine associated with the serving config.
  final pulumi.Input<String> engineId;

  /// The resource IDs of the filter controls to be applied.
  final pulumi.Input<List<String>>? filterControlIds;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The resource IDs of the promote controls to be applied.
  final pulumi.Input<List<String>>? promoteControlIds;

  /// The resource IDs of the redirect controls to be applied.
  final pulumi.Input<List<String>>? redirectControlIds;

  /// 'The unique ID of the serving config. Currently only accepts "default_search".'
  final pulumi.Input<String>? servingConfigId;

  /// The resource IDs of the synonyms controls to be applied.
  final pulumi.Input<List<String>>? synonymsControlIds;

  /// Creates a new [ServingConfigArgs].
  /// [boostControlIds] The resource IDs of the boost controls to be applied.
  /// [collectionId] The collection ID. Currently only accepts "default_collection".
  /// [engineId] The ID of the engine associated with the serving config.
  /// [filterControlIds] The resource IDs of the filter controls to be applied.
  /// [location] The geographic location where the data store should reside. The value can
  /// [project] The ID of the project in which the resource belongs.
  /// [promoteControlIds] The resource IDs of the promote controls to be applied.
  /// [redirectControlIds] The resource IDs of the redirect controls to be applied.
  /// [servingConfigId] 'The unique ID of the serving config. Currently only accepts "default_search".'
  /// [synonymsControlIds] The resource IDs of the synonyms controls to be applied.
  ServingConfigArgs({
    List<String>? boostControlIds,
    String? collectionId,
    required String engineId,
    List<String>? filterControlIds,
    required String location,
    String? project,
    List<String>? promoteControlIds,
    List<String>? redirectControlIds,
    String? servingConfigId,
    List<String>? synonymsControlIds,
  })  : boostControlIds =
            pulumi.Input.asOptionalInput<List<String>>(boostControlIds),
        collectionId = pulumi.Input.asOptionalInput<String>(collectionId),
        engineId = pulumi.Input.asInput<String>(engineId),
        filterControlIds =
            pulumi.Input.asOptionalInput<List<String>>(filterControlIds),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        promoteControlIds =
            pulumi.Input.asOptionalInput<List<String>>(promoteControlIds),
        redirectControlIds =
            pulumi.Input.asOptionalInput<List<String>>(redirectControlIds),
        servingConfigId = pulumi.Input.asOptionalInput<String>(servingConfigId),
        synonymsControlIds =
            pulumi.Input.asOptionalInput<List<String>>(synonymsControlIds);

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
      boostControlIds: map['boostControlIds'] == null
          ? null
          : (map['boostControlIds'] as List).cast<String>(),
      collectionId:
          map['collectionId'] == null ? null : map['collectionId'] as String,
      engineId: map['engineId'] as String,
      filterControlIds: map['filterControlIds'] == null
          ? null
          : (map['filterControlIds'] as List).cast<String>(),
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      promoteControlIds: map['promoteControlIds'] == null
          ? null
          : (map['promoteControlIds'] as List).cast<String>(),
      redirectControlIds: map['redirectControlIds'] == null
          ? null
          : (map['redirectControlIds'] as List).cast<String>(),
      servingConfigId: map['servingConfigId'] == null
          ? null
          : map['servingConfigId'] as String,
      synonymsControlIds: map['synonymsControlIds'] == null
          ? null
          : (map['synonymsControlIds'] as List).cast<String>(),
    );
  }
}
