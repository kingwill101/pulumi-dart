// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Import source related properties.
class ImportSourcePropertiesResponse {
  /// Relative path of data directory in storage.
  final pulumi.Input<String>? dataDirPath;
  /// Storage type of import source.
  final pulumi.Input<String>? storageType;
  /// Uri of the import source storage.
  final pulumi.Input<String>? storageUrl;

  /// Creates a new [ImportSourcePropertiesResponse].
  /// [dataDirPath] Relative path of data directory in storage.
  /// [storageType] Storage type of import source.
  /// [storageUrl] Uri of the import source storage.
  ImportSourcePropertiesResponse({
    this.dataDirPath,
    this.storageType,
    this.storageUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDirPath': ?dataDirPath,
      'storageType': ?storageType,
      'storageUrl': ?storageUrl,
    };
  }

  factory ImportSourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ImportSourcePropertiesResponse(
      dataDirPath: map['dataDirPath'] == null ? null : (map['dataDirPath']! as String).input(),
      storageType: map['storageType'] == null ? null : (map['storageType']! as String).input(),
      storageUrl: map['storageUrl'] == null ? null : (map['storageUrl']! as String).input(),
    );
  }
}

