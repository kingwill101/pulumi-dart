// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Import source related properties.
class ImportSourceProperties {
  /// Relative path of data directory in storage.
  final pulumi.Input<String>? dataDirPath;
  /// Sas token for accessing source storage. Read and list permissions are required for sas token.
  final pulumi.Input<String>? sasToken;
  /// Storage type of import source.
  final pulumi.Input<String>? storageType;
  /// Uri of the import source storage.
  final pulumi.Input<String>? storageUrl;

  /// Creates a new [ImportSourceProperties].
  /// [dataDirPath] Relative path of data directory in storage.
  /// [sasToken] Sas token for accessing source storage. Read and list permissions are required for sas token.
  /// [storageType] Storage type of import source.
  /// [storageUrl] Uri of the import source storage.
  ImportSourceProperties({
    this.dataDirPath,
    this.sasToken,
    this.storageType,
    this.storageUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDirPath': ?dataDirPath,
      'sasToken': ?sasToken,
      'storageType': ?storageType,
      'storageUrl': ?storageUrl,
    };
  }

  factory ImportSourceProperties.fromMap(Map<String, dynamic> map) {
    return ImportSourceProperties(
      dataDirPath: (() { final guardedValue = map['dataDirPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sasToken: (() { final guardedValue = map['sasToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageUrl: (() { final guardedValue = map['storageUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

