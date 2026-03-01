// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_feature_targeting_filter.dart';
import 'configuration_feature_timewindow_filter.dart';

/// {@template pulumi_appconfiguration_configuration_feature_configuration_feature_args_doc}
/// The set of arguments for ConfigurationFeature.
/// {@endtemplate}
/// {@macro pulumi_appconfiguration_configuration_feature_configuration_feature_args_doc}
class ConfigurationFeatureArgs {
  /// Specifies the id of the App Configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String> configurationStoreId;
  /// The description of the App Configuration Feature.
  final pulumi.Input<String>? description;
  /// The status of the App Configuration Feature. By default, this is set to false.
  final pulumi.Input<bool>? enabled;
  final pulumi.Input<String>? etag;
  /// The key of the App Configuration Feature. The value for `name` will be used if this is unspecified. Changing this forces a new resource to be created.
  final pulumi.Input<String>? key;
  /// The label of the App Configuration Feature. Changing this forces a new resource to be created.
  final pulumi.Input<String>? label;
  /// Should this App Configuration Feature be Locked to prevent changes?
  final pulumi.Input<bool>? locked;
  /// The name of the App Configuration Feature. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A number representing the value of the percentage required to enable this feature.
  final pulumi.Input<double>? percentageFilterValue;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `targeting_filter` block as defined below.
  final pulumi.Input<List<ConfigurationFeatureTargetingFilter>>? targetingFilters;
  /// A `timewindow_filter` block as defined below.
  final pulumi.Input<List<ConfigurationFeatureTimewindowFilter>>? timewindowFilters;

  /// Creates a new [ConfigurationFeatureArgs].
  /// [configurationStoreId] Specifies the id of the App Configuration. Changing this forces a new resource to be created.
  /// [description] The description of the App Configuration Feature.
  /// [enabled] The status of the App Configuration Feature. By default, this is set to false.
  /// [etag] Optional.
  /// [key] The key of the App Configuration Feature. The value for `name` will be used if this is unspecified. Changing this forces a new resource to be created.
  /// [label] The label of the App Configuration Feature. Changing this forces a new resource to be created.
  /// [locked] Should this App Configuration Feature be Locked to prevent changes?
  /// [name] The name of the App Configuration Feature. Changing this forces a new resource to be created.
  /// [percentageFilterValue] A number representing the value of the percentage required to enable this feature.
  /// [tags] A mapping of tags to assign to the resource.
  /// [targetingFilters] A `targeting_filter` block as defined below.
  /// [timewindowFilters] A `timewindow_filter` block as defined below.
  ConfigurationFeatureArgs({
    required String configurationStoreId,
    String? description,
    bool? enabled,
    String? etag,
    String? key,
    String? label,
    bool? locked,
    String? name,
    double? percentageFilterValue,
    Map<String, String>? tags,
    List<ConfigurationFeatureTargetingFilter>? targetingFilters,
    List<ConfigurationFeatureTimewindowFilter>? timewindowFilters,
  }) :
      configurationStoreId = pulumi.Input.asInput<String>(configurationStoreId),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      key = pulumi.Input.asOptionalInput<String>(key),
      label = pulumi.Input.asOptionalInput<String>(label),
      locked = pulumi.Input.asOptionalInput<bool>(locked),
      name = pulumi.Input.asOptionalInput<String>(name),
      percentageFilterValue = pulumi.Input.asOptionalInput<double>(percentageFilterValue),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetingFilters = pulumi.Input.asOptionalInput<List<ConfigurationFeatureTargetingFilter>>(targetingFilters),
      timewindowFilters = pulumi.Input.asOptionalInput<List<ConfigurationFeatureTimewindowFilter>>(timewindowFilters);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationStoreId': configurationStoreId,
      'description': ?description,
      'enabled': ?enabled,
      'etag': ?etag,
      'key': ?key,
      'label': ?label,
      'locked': ?locked,
      'name': ?name,
      'percentageFilterValue': ?percentageFilterValue,
      'tags': ?tags,
      'targetingFilters': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationFeatureTargetingFilter>, List<Map<String, dynamic>>>(targetingFilters, (value) => pulumi.Input.encodeList<ConfigurationFeatureTargetingFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timewindowFilters': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationFeatureTimewindowFilter>, List<Map<String, dynamic>>>(timewindowFilters, (value) => pulumi.Input.encodeList<ConfigurationFeatureTimewindowFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ConfigurationFeatureArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationFeatureArgs(
      configurationStoreId: map['configurationStoreId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      etag: map['etag'] == null ? null : map['etag'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      locked: map['locked'] == null ? null : map['locked'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      percentageFilterValue: map['percentageFilterValue'] == null ? null : map['percentageFilterValue'] as double,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targetingFilters: map['targetingFilters'] == null ? null : pulumi.Input.decodeList<ConfigurationFeatureTargetingFilter>(map['targetingFilters'], (value) => ConfigurationFeatureTargetingFilter.fromMap((value as Map).cast<String, dynamic>())),
      timewindowFilters: map['timewindowFilters'] == null ? null : pulumi.Input.decodeList<ConfigurationFeatureTimewindowFilter>(map['timewindowFilters'], (value) => ConfigurationFeatureTimewindowFilter.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

