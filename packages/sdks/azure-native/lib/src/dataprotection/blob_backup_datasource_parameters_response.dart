// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters to be used during configuration of backup of blobs
class BlobBackupDatasourceParametersResponse {
  /// List of containers to be backed up during configuration of backup of blobs
  final pulumi.Input<List<String>> containersList;
  /// Type of the specific object - used for deserializing
  /// Expected value is 'BlobBackupDatasourceParameters'.
  final pulumi.Input<String> objectType;

  /// Creates a new [BlobBackupDatasourceParametersResponse].
  /// [containersList] List of containers to be backed up during configuration of backup of blobs
  /// [objectType] Type of the specific object - used for deserializing
  BlobBackupDatasourceParametersResponse({
    required this.containersList,
    required this.objectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containersList': containersList,
      'objectType': objectType,
    };
  }

  factory BlobBackupDatasourceParametersResponse.fromMap(Map<String, dynamic> map) {
    return BlobBackupDatasourceParametersResponse(
      containersList: pulumi.Input.fromValue((map['containersList'] as List).cast<String>()),
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
    );
  }
}

