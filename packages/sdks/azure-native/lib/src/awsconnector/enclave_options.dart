// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of EnclaveOptions
class EnclaveOptions {
  /// &lt;p&gt;If this parameter is set to &lt;code&gt;true&lt;/code&gt;, the instance is enabled for Amazon Web Services Nitro Enclaves; otherwise, it is not enabled for Amazon Web Services Nitro Enclaves.&lt;/p&gt;
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [EnclaveOptions].
  /// [enabled] &lt;p&gt;If this parameter is set to &lt;code&gt;true&lt;/code&gt;, the instance is enabled for Amazon Web Services Nitro Enclaves; otherwise, it is not enabled for Amazon Web Services Nitro Enclaves.&lt;/p&gt;
  const EnclaveOptions({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory EnclaveOptions.fromMap(Map<String, dynamic> map) {
    return EnclaveOptions(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
