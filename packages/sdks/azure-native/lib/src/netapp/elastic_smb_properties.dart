// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SMB Properties
class ElasticSmbProperties {
  /// Used to enable or disable encryption for in-flight SMB data volume. This flag can be modified during Elastic volume update operation as well. Only applicable for SMB protocol Elastic volumes.
  final pulumi.Input<String>? smbEncryption;

  /// Creates a new [ElasticSmbProperties].
  /// [smbEncryption] Used to enable or disable encryption for in-flight SMB data volume. This flag can be modified during Elastic volume update operation as well. Only applicable for SMB protocol Elastic volumes.
  ElasticSmbProperties({
    this.smbEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'smbEncryption': ?smbEncryption,
    };
  }

  factory ElasticSmbProperties.fromMap(Map<String, dynamic> map) {
    return ElasticSmbProperties(
      smbEncryption: map['smbEncryption'] == null ? null : (map['smbEncryption'] as String).input(),
    );
  }
}

