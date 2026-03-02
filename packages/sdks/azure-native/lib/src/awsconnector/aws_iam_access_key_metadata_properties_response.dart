// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_type_enum_value_response.dart';

/// Definition of awsIamAccessKeyMetadata
class AwsIamAccessKeyMetadataPropertiesResponse {
  /// <p>The ID for this access key.</p>
  final pulumi.Input<String>? accessKeyId;
  /// <p>The date when the access key was created.</p>
  final pulumi.Input<String>? createDate;
  /// <p>The status of the access key. <code>Active</code> means that the key is valid for API calls; <code>Inactive</code> means it is not.</p>
  final pulumi.Input<StatusTypeEnumValueResponse>? status;
  /// <p>The name of the IAM user that the key is associated with.</p>
  final pulumi.Input<String>? userName;

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
      'status': ?pulumi.Input.mapOptionalInputValue<StatusTypeEnumValueResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
      'userName': ?userName,
    };
  }

  factory AwsIamAccessKeyMetadataPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsIamAccessKeyMetadataPropertiesResponse(
      accessKeyId: map['accessKeyId'] == null ? null : (map['accessKeyId']! as String).input(),
      createDate: map['createDate'] == null ? null : (map['createDate']! as String).input(),
      status: map['status'] == null ? null : (StatusTypeEnumValueResponse.fromMap((map['status']! as Map).cast<String, dynamic>())).input(),
      userName: map['userName'] == null ? null : (map['userName']! as String).input(),
    );
  }
}

