// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../tool_data_store_tool_boost_spec/tool_data_store_tool_boost_spec.dart';
import '../tool_data_store_tool_engine_source/tool_data_store_tool_engine_source.dart';
import '../tool_data_store_tool_modality_config/tool_data_store_tool_modality_config.dart';

class ToolDataStoreTool {
  /// Boost specification to boost certain documents.
  /// Structure is documented below.
  final List<ToolDataStoreToolBoostSpec>? boostSpecs;

  /// The tool description.
  final String? description;

  /// Configuration for searching within an Engine, potentially targeting
  /// specific DataStores.
  /// Structure is documented below.
  final ToolDataStoreToolEngineSource? engineSource;

  /// Number of search results to return per query.
  /// The default value is 10. The maximum allowed value is 10.
  final int? maxResults;

  /// The modality configs for the data store.
  /// Structure is documented below.
  final List<ToolDataStoreToolModalityConfig>? modalityConfigs;

  /// The data store tool name.
  final String name;

  ToolDataStoreTool({
    this.boostSpecs,
    this.description,
    this.engineSource,
    this.maxResults,
    this.modalityConfigs,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final boostSpecsValue = boostSpecs;
    if (boostSpecsValue != null) {
      map['boostSpecs'] = pulumi.Input.encodeList<ToolDataStoreToolBoostSpec,
          Map<String, dynamic>>(boostSpecsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final engineSourceValue = engineSource;
    if (engineSourceValue != null) {
      map['engineSource'] = engineSourceValue.toMap();
    }
    final maxResultsValue = maxResults;
    if (maxResultsValue != null) {
      map['maxResults'] = maxResultsValue;
    }
    final modalityConfigsValue = modalityConfigs;
    if (modalityConfigsValue != null) {
      map['modalityConfigs'] = pulumi.Input.encodeList<
          ToolDataStoreToolModalityConfig,
          Map<String, dynamic>>(modalityConfigsValue, (value) => value.toMap());
    }
    map['name'] = name;
    return map;
  }

  factory ToolDataStoreTool.fromMap(Map<String, dynamic> map) {
    return ToolDataStoreTool(
      boostSpecs: map['boostSpecs'] == null
          ? null
          : pulumi.Input.decodeList<ToolDataStoreToolBoostSpec>(
              map['boostSpecs'],
              (value) => ToolDataStoreToolBoostSpec.fromMap(
                  (value as Map).cast<String, dynamic>())),
      description:
          map['description'] == null ? null : map['description'] as String,
      engineSource: map['engineSource'] == null
          ? null
          : ToolDataStoreToolEngineSource.fromMap(
              (map['engineSource'] as Map).cast<String, dynamic>()),
      maxResults: map['maxResults'] == null ? null : map['maxResults'] as int,
      modalityConfigs: map['modalityConfigs'] == null
          ? null
          : pulumi.Input.decodeList<ToolDataStoreToolModalityConfig>(
              map['modalityConfigs'],
              (value) => ToolDataStoreToolModalityConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}
