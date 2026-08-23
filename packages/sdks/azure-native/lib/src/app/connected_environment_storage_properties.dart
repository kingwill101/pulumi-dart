// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_file_properties.dart';
import 'smb_storage.dart';

/// Storage properties
class ConnectedEnvironmentStorageProperties {
  /// Azure file properties
  final pulumi.Input<AzureFileProperties>? azureFile;
  /// SMB storage properties
  final pulumi.Input<SmbStorage>? smb;

  /// Creates a new [ConnectedEnvironmentStorageProperties].
  /// [azureFile] Azure file properties
  /// [smb] SMB storage properties
  const ConnectedEnvironmentStorageProperties({
    this.azureFile,
    this.smb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureFile': ?pulumi.Input.mapOptionalInputValue<AzureFileProperties, Map<String, dynamic>>(azureFile, (value) => value.toMap()),
      'smb': ?pulumi.Input.mapOptionalInputValue<SmbStorage, Map<String, dynamic>>(smb, (value) => value.toMap()),
    };
  }

  factory ConnectedEnvironmentStorageProperties.fromMap(Map<String, dynamic> map) {
    return ConnectedEnvironmentStorageProperties(
      azureFile: (() { final guardedValue = map['azureFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureFileProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      smb: (() { final guardedValue = map['smb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SmbStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
