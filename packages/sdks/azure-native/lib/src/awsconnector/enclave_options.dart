// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of EnclaveOptions
class EnclaveOptions {
  /// <p>If this parameter is set to <code>true</code>, the instance is enabled for Amazon Web Services Nitro Enclaves; otherwise, it is not enabled for Amazon Web Services Nitro Enclaves.</p>
  final pulumi.Input<bool>? enabled;

  /// Creates a new [EnclaveOptions].
  /// [enabled] <p>If this parameter is set to <code>true</code>, the instance is enabled for Amazon Web Services Nitro Enclaves; otherwise, it is not enabled for Amazon Web Services Nitro Enclaves.</p>
  EnclaveOptions({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory EnclaveOptions.fromMap(Map<String, dynamic> map) {
    return EnclaveOptions(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

