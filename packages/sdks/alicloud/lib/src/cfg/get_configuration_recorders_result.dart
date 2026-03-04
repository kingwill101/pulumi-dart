// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_configuration_recorders_recorder.dart';

/// Result data returned by getConfigurationRecorders.
class GetConfigurationRecordersResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? outputFile;

  /// A list of Config Configuration Recorders. Each element contains the following attributes:
  final List<GetConfigurationRecordersRecorder> recorders;

  /// Creates a new [GetConfigurationRecordersResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [outputFile] Optional.
  /// [recorders] A list of Config Configuration Recorders. Each element contains the following attributes:
  GetConfigurationRecordersResult({
    required this.id,
    this.outputFile,
    required this.recorders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'outputFile': ?outputFile,
      'recorders':
          pulumi.Input.encodeList<
            GetConfigurationRecordersRecorder,
            Map<String, dynamic>
          >(recorders, (value) => value.toMap()),
    };
  }

  factory GetConfigurationRecordersResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationRecordersResult(
      id: map['id'] as String,
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      recorders: pulumi.Input.decodeList<GetConfigurationRecordersRecorder>(
        map['recorders']!,
        (value) => GetConfigurationRecordersRecorder.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
