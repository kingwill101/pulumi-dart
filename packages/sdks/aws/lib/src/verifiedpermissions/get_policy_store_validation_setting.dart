// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPolicyStoreValidationSetting {
  final pulumi.Input<String> mode;

  /// Creates a new [GetPolicyStoreValidationSetting].
  /// [mode] Required.
  const GetPolicyStoreValidationSetting({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory GetPolicyStoreValidationSetting.fromMap(Map<String, dynamic> map) {
    return GetPolicyStoreValidationSetting(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}

