// ignore_for_file: unused_element, unnecessary_cast

import 'status_type_enum_value_response.dart';

/// Definition of awsIamAccessKeyMetadata
class AwsIamAccessKeyMetadataPropertiesResponse {
  /// <p>The ID for this access key.</p>
  final String? accessKeyId;
  /// <p>The date when the access key was created.</p>
  final String? createDate;
  /// <p>The status of the access key. <code>Active</code> means that the key is valid for API calls; <code>Inactive</code> means it is not.</p>
  final StatusTypeEnumValueResponse? status;
  /// <p>The name of the IAM user that the key is associated with.</p>
  final String? userName;

  /// Creates a new [AwsIamAccessKeyMetadataPropertiesResponse].
  /// [accessKeyId] <p>The ID for this access key.</p>
  /// [createDate] <p>The date when the access key was created.</p>
  /// [status] <p>The status of the access key. <code>Active</code> means that the key is valid for API calls; <code>Inactive</code> means it is not.</p>
  /// [userName] <p>The name of the IAM user that the key is associated with.</p>
  AwsIamAccessKeyMetadataPropertiesResponse({
    this.accessKeyId,
    this.createDate,
    this.status,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': ?accessKeyId,
      'createDate': ?createDate,
      'status': ?status == null ? null : status!.toMap(),
      'userName': ?userName,
    };
  }

  factory AwsIamAccessKeyMetadataPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsIamAccessKeyMetadataPropertiesResponse(
      accessKeyId: map['accessKeyId'] == null ? null : map['accessKeyId'] as String,
      createDate: map['createDate'] == null ? null : map['createDate'] as String,
      status: map['status'] == null ? null : StatusTypeEnumValueResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

