// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of EnclaveOptions
class EnclaveOptionsResponse {
  /// &lt;p&gt;If this parameter is set to &lt;code&gt;true&lt;/code&gt;, the instance is enabled for Amazon Web Services Nitro Enclaves; otherwise, it is not enabled for Amazon Web Services Nitro Enclaves.&lt;/p&gt;
  final pulumi.Input<bool>? enabled;

  /// Creates a new [EnclaveOptionsResponse].
  /// [enabled] &lt;p&gt;If this parameter is set to &lt;code&gt;true&lt;/code&gt;, the instance is enabled for Amazon Web Services Nitro Enclaves; otherwise, it is not enabled for Amazon Web Services Nitro Enclaves.&lt;/p&gt;
  EnclaveOptionsResponse({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory EnclaveOptionsResponse.fromMap(Map<String, dynamic> map) {
    return EnclaveOptionsResponse(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
