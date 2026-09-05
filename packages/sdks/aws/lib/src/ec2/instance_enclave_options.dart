// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceEnclaveOptions {
  /// Whether Nitro Enclaves will be enabled on the instance. Defaults to `false`.
  ///
  /// For more information, see the documentation on [Nitro Enclaves](https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave.html).
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [InstanceEnclaveOptions].
  /// [enabled] Whether Nitro Enclaves will be enabled on the instance. Defaults to `false`.
  const InstanceEnclaveOptions({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory InstanceEnclaveOptions.fromMap(Map<String, dynamic> map) {
    return InstanceEnclaveOptions(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
