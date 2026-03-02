// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_logtail_configs_config.dart';

/// Result data returned by getLogtailConfigs.
class GetLogtailConfigsResult {
  /// A list of Logtail Config Entries. Each element contains the following attributes:
  final List<GetLogtailConfigsConfig> configs;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Logtail Config IDs.
  final List<String> ids;
  final String logstoreName;
  /// The name of the resource
  final String? logtailConfigName;
  final String? nameRegex;
  /// A list of name of Logtail Configs.
  final List<String> names;
  final int offset;
  final String? outputFile;
  final String projectName;
  final int size;

  /// Creates a new [GetLogtailConfigsResult].
  /// [configs] A list of Logtail Config Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Logtail Config IDs.
  /// [logstoreName] Required.
  /// [logtailConfigName] The name of the resource
  /// [nameRegex] Optional.
  /// [names] A list of name of Logtail Configs.
  /// [offset] Required.
  /// [outputFile] Optional.
  /// [projectName] Required.
  /// [size] Required.
  GetLogtailConfigsResult({
    required this.configs,
    required this.id,
    required this.ids,
    required this.logstoreName,
    this.logtailConfigName,
    this.nameRegex,
    required this.names,
    required this.offset,
    this.outputFile,
    required this.projectName,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configs': pulumi.Input.encodeList<GetLogtailConfigsConfig, Map<String, dynamic>>(configs, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'logstoreName': logstoreName,
      'logtailConfigName': ?logtailConfigName,
      'nameRegex': ?nameRegex,
      'names': names,
      'offset': offset,
      'outputFile': ?outputFile,
      'projectName': projectName,
      'size': size,
    };
  }

  factory GetLogtailConfigsResult.fromMap(Map<String, dynamic> map) {
    return GetLogtailConfigsResult(
      configs: pulumi.Input.decodeList<GetLogtailConfigsConfig>(map['configs'], (value) => GetLogtailConfigsConfig.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      logstoreName: map['logstoreName'] as String,
      logtailConfigName: map['logtailConfigName'] == null ? null : map['logtailConfigName']! as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      offset: map['offset'] as int,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      projectName: map['projectName'] as String,
      size: map['size'] as int,
    );
  }
}

