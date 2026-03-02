// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEndpointRedshiftSetting {
  final pulumi.Input<String> bucketFolder;
  final pulumi.Input<String> bucketName;
  final pulumi.Input<String> encryptionMode;
  final pulumi.Input<String> serverSideEncryptionKmsKeyId;
  final pulumi.Input<String> serviceAccessRoleArn;

  /// Creates a new [GetEndpointRedshiftSetting].
  /// [bucketFolder] Required.
  /// [bucketName] Required.
  /// [encryptionMode] Required.
  /// [serverSideEncryptionKmsKeyId] Required.
  /// [serviceAccessRoleArn] Required.
  GetEndpointRedshiftSetting({
    required this.bucketFolder,
    required this.bucketName,
    required this.encryptionMode,
    required this.serverSideEncryptionKmsKeyId,
    required this.serviceAccessRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketFolder': bucketFolder,
      'bucketName': bucketName,
      'encryptionMode': encryptionMode,
      'serverSideEncryptionKmsKeyId': serverSideEncryptionKmsKeyId,
      'serviceAccessRoleArn': serviceAccessRoleArn,
    };
  }

  factory GetEndpointRedshiftSetting.fromMap(Map<String, dynamic> map) {
    return GetEndpointRedshiftSetting(
      bucketFolder: (map['bucketFolder'] as String).input(),
      bucketName: (map['bucketName'] as String).input(),
      encryptionMode: (map['encryptionMode'] as String).input(),
      serverSideEncryptionKmsKeyId: (map['serverSideEncryptionKmsKeyId'] as String).input(),
      serviceAccessRoleArn: (map['serviceAccessRoleArn'] as String).input(),
    );
  }
}

