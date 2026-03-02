// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchTemplateEnclaveOptions {
  /// If set to `true`, Nitro Enclaves will be enabled on the instance.
  ///
  /// For more information, see the documentation on [Nitro Enclaves](https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave.html).
  final pulumi.Input<bool>? enabled;

  /// Creates a new [LaunchTemplateEnclaveOptions].
  /// [enabled] If set to `true`, Nitro Enclaves will be enabled on the instance.
  LaunchTemplateEnclaveOptions({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory LaunchTemplateEnclaveOptions.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateEnclaveOptions(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

