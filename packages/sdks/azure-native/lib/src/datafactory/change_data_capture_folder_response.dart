// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The folder that this CDC is in. If not specified, CDC will appear at the root level.
class ChangeDataCaptureFolderResponse {
  /// The name of the folder that this CDC is in.
  final pulumi.Input<String?>? name;

  /// Creates a new [ChangeDataCaptureFolderResponse].
  /// [name] The name of the folder that this CDC is in.
  const ChangeDataCaptureFolderResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ChangeDataCaptureFolderResponse.fromMap(Map<String, dynamic> map) {
    return ChangeDataCaptureFolderResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
