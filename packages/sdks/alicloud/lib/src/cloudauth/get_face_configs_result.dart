// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_face_configs_config.dart';

/// Result data returned by getFaceConfigs.
class GetFaceConfigsResult {
  final List<GetFaceConfigsConfig> configs;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetFaceConfigsResult].
  /// [configs] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  GetFaceConfigsResult({
    required this.configs,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configs':
          pulumi.Input.encodeList<GetFaceConfigsConfig, Map<String, dynamic>>(
            configs,
            (value) => value.toMap(),
          ),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetFaceConfigsResult.fromMap(Map<String, dynamic> map) {
    return GetFaceConfigsResult(
      configs: pulumi.Input.decodeList<GetFaceConfigsConfig>(
        map['configs']!,
        (value) => GetFaceConfigsConfig.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
