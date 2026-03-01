// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_data_store_tool_boost_spec.dart';
import 'tool_data_store_tool_engine_source.dart';
import 'tool_data_store_tool_modality_config.dart';

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

  /// Creates a new [ToolDataStoreTool].
  /// [boostSpecs] Boost specification to boost certain documents.
  /// [description] The tool description.
  /// [engineSource] Configuration for searching within an Engine, potentially targeting
  /// [maxResults] Number of search results to return per query.
  /// [modalityConfigs] The modality configs for the data store.
  /// [name] The data store tool name.
  ToolDataStoreTool({
    this.boostSpecs,
    this.description,
    this.engineSource,
    this.maxResults,
    this.modalityConfigs,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boostSpecs': ?boostSpecs == null
          ? null
          : pulumi.Input.encodeList<
              ToolDataStoreToolBoostSpec,
              Map<String, dynamic>
            >(boostSpecs!, (value) => value.toMap()),
      'description': ?description,
      'engineSource': ?engineSource == null ? null : engineSource!.toMap(),
      'maxResults': ?maxResults,
      'modalityConfigs': ?modalityConfigs == null
          ? null
          : pulumi.Input.encodeList<
              ToolDataStoreToolModalityConfig,
              Map<String, dynamic>
            >(modalityConfigs!, (value) => value.toMap()),
      'name': name,
    };
  }

  factory ToolDataStoreTool.fromMap(Map<String, dynamic> map) {
    return ToolDataStoreTool(
      boostSpecs: map['boostSpecs'] == null
          ? null
          : pulumi.Input.decodeList<ToolDataStoreToolBoostSpec>(
              map['boostSpecs'],
              (value) => ToolDataStoreToolBoostSpec.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      engineSource: map['engineSource'] == null
          ? null
          : ToolDataStoreToolEngineSource.fromMap(
              (map['engineSource'] as Map).cast<String, dynamic>(),
            ),
      maxResults: map['maxResults'] == null ? null : map['maxResults'] as int,
      modalityConfigs: map['modalityConfigs'] == null
          ? null
          : pulumi.Input.decodeList<ToolDataStoreToolModalityConfig>(
              map['modalityConfigs'],
              (value) => ToolDataStoreToolModalityConfig.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      name: map['name'] as String,
    );
  }
}
