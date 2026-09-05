// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KxVolumeNas1Configuration {
  /// Size of the network attached storage.
  final pulumi.Input<int> size;
  /// Type of the network attached storage.
  final pulumi.Input<String> type;

  /// Creates a new [KxVolumeNas1Configuration].
  /// [size] Size of the network attached storage.
  /// [type] Type of the network attached storage.
  const KxVolumeNas1Configuration({
    required this.size,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': size,
      'type': type,
    };
  }

  factory KxVolumeNas1Configuration.fromMap(Map<String, dynamic> map) {
    return KxVolumeNas1Configuration(
      size: pulumi.Input.fromValue((map['size'] as num).toInt()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
