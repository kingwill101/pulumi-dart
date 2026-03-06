// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The folder that this CDC is in. If not specified, CDC will appear at the root level.
class ChangeDataCaptureResponseFolder {
  /// The name of the folder that this CDC is in.
  final pulumi.Input<String>? name;

  /// Creates a new [ChangeDataCaptureResponseFolder].
  /// [name] The name of the folder that this CDC is in.
  const ChangeDataCaptureResponseFolder({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ChangeDataCaptureResponseFolder.fromMap(Map<String, dynamic> map) {
    return ChangeDataCaptureResponseFolder(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

