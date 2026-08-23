// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SMB Properties
class ElasticSmbPropertiesResponse {
  /// Used to enable or disable encryption for in-flight SMB data volume. This flag can be modified during Elastic volume update operation as well. Only applicable for SMB protocol Elastic volumes.
  final pulumi.Input<String>? smbEncryption;

  /// Creates a new [ElasticSmbPropertiesResponse].
  /// [smbEncryption] Used to enable or disable encryption for in-flight SMB data volume. This flag can be modified during Elastic volume update operation as well. Only applicable for SMB protocol Elastic volumes.
  const ElasticSmbPropertiesResponse({
    this.smbEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'smbEncryption': ?smbEncryption,
    };
  }

  factory ElasticSmbPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ElasticSmbPropertiesResponse(
      smbEncryption: (() { final guardedValue = map['smbEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
