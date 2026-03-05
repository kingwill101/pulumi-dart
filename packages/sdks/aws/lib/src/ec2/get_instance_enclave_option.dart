// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceEnclaveOption {
  /// Whether Nitro Enclaves are enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetInstanceEnclaveOption].
  /// [enabled] Whether Nitro Enclaves are enabled.
  GetInstanceEnclaveOption({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetInstanceEnclaveOption.fromMap(Map<String, dynamic> map) {
    return GetInstanceEnclaveOption(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

