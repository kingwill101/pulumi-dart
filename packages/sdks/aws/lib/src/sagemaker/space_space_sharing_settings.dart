// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpaceSpaceSharingSettings {
  /// Specifies the sharing type of the space. Valid values are `Private` and `Shared`.
  final pulumi.Input<String> sharingType;

  /// Creates a new [SpaceSpaceSharingSettings].
  /// [sharingType] Specifies the sharing type of the space. Valid values are `Private` and `Shared`.
  const SpaceSpaceSharingSettings({
    required this.sharingType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sharingType': sharingType,
    };
  }

  factory SpaceSpaceSharingSettings.fromMap(Map<String, dynamic> map) {
    return SpaceSpaceSharingSettings(
      sharingType: pulumi.Input.fromValue(map['sharingType'] as String),
    );
  }
}
