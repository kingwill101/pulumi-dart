// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_configs_config.dart';

/// Result data returned by getConfigs.
class GetConfigsResult {
  /// A list of Sddp Configs. Each element contains the following attributes:
  final List<GetConfigsConfig> configs;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? lang;
  final String? outputFile;

  /// Creates a new [GetConfigsResult].
  /// [configs] A list of Sddp Configs. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [lang] Optional.
  /// [outputFile] Optional.
  GetConfigsResult({
    required this.configs,
    required this.id,
    required this.ids,
    this.lang,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configs':
          pulumi.Input.encodeList<GetConfigsConfig, Map<String, dynamic>>(
            configs,
            (value) => value.toMap(),
          ),
      'id': id,
      'ids': ids,
      'lang': ?lang,
      'outputFile': ?outputFile,
    };
  }

  factory GetConfigsResult.fromMap(Map<String, dynamic> map) {
    return GetConfigsResult(
      configs: pulumi.Input.decodeList<GetConfigsConfig>(
        map['configs']!,
        (value) =>
            GetConfigsConfig.fromMap((value as Map).cast<String, dynamic>()),
      ),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      lang: (() {
        final guardedValue = map['lang'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
