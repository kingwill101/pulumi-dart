// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of EncryptionAtRestOptions
class EncryptionAtRestOptionsResponse {
  /// &lt;p&gt;True to enable encryption at rest.&lt;/p&gt;
  final pulumi.Input<bool?>? enabled;
  /// &lt;p&gt;The KMS key ID. Takes the form &lt;code&gt;1a2a3a4-1a2a-3a4a-5a6a-1a2a3a4a5a6a&lt;/code&gt;.&lt;/p&gt;
  final pulumi.Input<String?>? kmsKeyId;

  /// Creates a new [EncryptionAtRestOptionsResponse].
  /// [enabled] &lt;p&gt;True to enable encryption at rest.&lt;/p&gt;
  /// [kmsKeyId] &lt;p&gt;The KMS key ID. Takes the form &lt;code&gt;1a2a3a4-1a2a-3a4a-5a6a-1a2a3a4a5a6a&lt;/code&gt;.&lt;/p&gt;
  const EncryptionAtRestOptionsResponse({
    this.enabled,
    this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'kmsKeyId': ?kmsKeyId,
    };
  }

  factory EncryptionAtRestOptionsResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionAtRestOptionsResponse(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
