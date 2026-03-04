// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_log_configs_config.dart';

/// Result data returned by getLogConfigs.
class GetLogConfigsResult {
  final List<GetLogConfigsConfig> configs;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? logType;
  final String? outputFile;

  /// Creates a new [GetLogConfigsResult].
  /// [configs] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [logType] Optional.
  /// [outputFile] Optional.
  GetLogConfigsResult({
    required this.configs,
    required this.id,
    required this.ids,
    this.logType,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configs':
          pulumi.Input.encodeList<GetLogConfigsConfig, Map<String, dynamic>>(
            configs,
            (value) => value.toMap(),
          ),
      'id': id,
      'ids': ids,
      'logType': ?logType,
      'outputFile': ?outputFile,
    };
  }

  factory GetLogConfigsResult.fromMap(Map<String, dynamic> map) {
    return GetLogConfigsResult(
      configs: pulumi.Input.decodeList<GetLogConfigsConfig>(
        map['configs']!,
        (value) =>
            GetLogConfigsConfig.fromMap((value as Map).cast<String, dynamic>()),
      ),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      logType: (() {
        final guardedValue = map['logType'];
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
