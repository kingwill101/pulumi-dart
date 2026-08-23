// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_reference.dart';

/// Staging settings.
class StagingSettings {
  /// Specifies whether to use compression when copying data via an interim staging. Default value is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? enableCompression;
  /// Staging linked service reference.
  final pulumi.Input<LinkedServiceReference> linkedServiceName;
  /// The path to storage for storing the interim data. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? path;

  /// Creates a new [StagingSettings].
  /// [enableCompression] Specifies whether to use compression when copying data via an interim staging. Default value is false. Type: boolean (or Expression with resultType boolean).
  /// [linkedServiceName] Staging linked service reference.
  /// [path] The path to storage for storing the interim data. Type: string (or Expression with resultType string).
  const StagingSettings({
    this.enableCompression,
    required this.linkedServiceName,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableCompression': ?enableCompression,
      'linkedServiceName': pulumi.Input.mapInputValue<LinkedServiceReference, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'path': ?path,
    };
  }

  factory StagingSettings.fromMap(Map<String, dynamic> map) {
    return StagingSettings(
      enableCompression: (() { final guardedValue = map['enableCompression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      linkedServiceName: pulumi.Input.fromValue(LinkedServiceReference.fromMap((map['linkedServiceName']! as Map).cast<String, dynamic>())),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
