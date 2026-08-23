// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImageImagePermission {
  /// Whether the image can be used for a fleet.
  final pulumi.Input<bool> allowFleet;
  /// Whether the image can be used for an image builder.
  final pulumi.Input<bool> allowImageBuilder;

  /// Creates a new [GetImageImagePermission].
  /// [allowFleet] Whether the image can be used for a fleet.
  /// [allowImageBuilder] Whether the image can be used for an image builder.
  const GetImageImagePermission({
    required this.allowFleet,
    required this.allowImageBuilder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowFleet': allowFleet,
      'allowImageBuilder': allowImageBuilder,
    };
  }

  factory GetImageImagePermission.fromMap(Map<String, dynamic> map) {
    return GetImageImagePermission(
      allowFleet: pulumi.Input.fromValue(map['allowFleet'] as bool),
      allowImageBuilder: pulumi.Input.fromValue(map['allowImageBuilder'] as bool),
    );
  }
}
