// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchTemplateEnclaveOption {
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetLaunchTemplateEnclaveOption].
  /// [enabled] Required.
  const GetLaunchTemplateEnclaveOption({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetLaunchTemplateEnclaveOption.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateEnclaveOption(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

