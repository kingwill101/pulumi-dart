// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information used to connect to an Azure Fileshare.
class AzureFileShareConfiguration {
  /// The Azure Storage account key.
  final pulumi.Input<String> accountKey;
  /// The Azure Storage account name.
  final pulumi.Input<String> accountName;
  /// This is of the form 'https://{account}.file.core.windows.net/'.
  final pulumi.Input<String> azureFileUrl;
  /// These are 'net use' options in Windows and 'mount' options in Linux.
  final pulumi.Input<String>? mountOptions;
  /// All file systems are mounted relative to the Batch mounts directory, accessible via the AZ_BATCH_NODE_MOUNTS_DIR environment variable.
  final pulumi.Input<String> relativeMountPath;

  /// Creates a new [AzureFileShareConfiguration].
  /// [accountKey] The Azure Storage account key.
  /// [accountName] The Azure Storage account name.
  /// [azureFileUrl] This is of the form 'https://{account}.file.core.windows.net/'.
  /// [mountOptions] These are 'net use' options in Windows and 'mount' options in Linux.
  /// [relativeMountPath] All file systems are mounted relative to the Batch mounts directory, accessible via the AZ_BATCH_NODE_MOUNTS_DIR environment variable.
  AzureFileShareConfiguration({
    required this.accountKey,
    required this.accountName,
    required this.azureFileUrl,
    this.mountOptions,
    required this.relativeMountPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': accountKey,
      'accountName': accountName,
      'azureFileUrl': azureFileUrl,
      'mountOptions': ?mountOptions,
      'relativeMountPath': relativeMountPath,
    };
  }

  factory AzureFileShareConfiguration.fromMap(Map<String, dynamic> map) {
    return AzureFileShareConfiguration(
      accountKey: pulumi.Input.fromValue(map['accountKey'] as String),
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      azureFileUrl: pulumi.Input.fromValue(map['azureFileUrl'] as String),
      mountOptions: (() { final guardedValue = map['mountOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relativeMountPath: pulumi.Input.fromValue(map['relativeMountPath'] as String),
    );
  }
}

