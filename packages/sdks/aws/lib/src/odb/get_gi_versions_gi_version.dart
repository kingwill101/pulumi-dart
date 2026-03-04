// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGiVersionsGiVersion {
  /// The GI software version.
  final pulumi.Input<String> version;

  /// Creates a new [GetGiVersionsGiVersion].
  /// [version] The GI software version.
  GetGiVersionsGiVersion({required this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'version': version};
  }

  factory GetGiVersionsGiVersion.fromMap(Map<String, dynamic> map) {
    return GetGiVersionsGiVersion(
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
