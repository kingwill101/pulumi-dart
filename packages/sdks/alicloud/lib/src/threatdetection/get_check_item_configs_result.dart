// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_check_item_configs_config.dart';

/// Result data returned by getCheckItemConfigs.
class GetCheckItemConfigsResult {
  /// A list of Check Item Config Entries. Each element contains the following attributes:
  final List<GetCheckItemConfigsConfig> configs;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Check Item Config IDs.
  final List<String> ids;
  final String? lang;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  final List<String>? taskSources;

  /// Creates a new [GetCheckItemConfigsResult].
  /// [configs] A list of Check Item Config Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Check Item Config IDs.
  /// [lang] Optional.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [taskSources] Optional.
  GetCheckItemConfigsResult({
    required this.configs,
    required this.id,
    required this.ids,
    this.lang,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.taskSources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configs': pulumi.Input.encodeList<GetCheckItemConfigsConfig, Map<String, dynamic>>(configs, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'lang': ?lang,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'taskSources': ?taskSources,
    };
  }

  factory GetCheckItemConfigsResult.fromMap(Map<String, dynamic> map) {
    return GetCheckItemConfigsResult(
      configs: pulumi.Input.decodeList<GetCheckItemConfigsConfig>(map['configs'], (value) => GetCheckItemConfigsConfig.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      lang: map['lang'] == null ? null : map['lang']! as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
      taskSources: map['taskSources'] == null ? null : (map['taskSources']! as List).cast<String>(),
    );
  }
}

