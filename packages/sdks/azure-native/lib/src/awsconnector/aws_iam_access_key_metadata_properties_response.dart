// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_type_enum_value_response.dart';

/// Definition of awsIamAccessKeyMetadata
class AwsIamAccessKeyMetadataPropertiesResponse {
  /// &lt;p&gt;The ID for this access key.&lt;/p&gt;
  final pulumi.Input<String>? accessKeyId;

  /// &lt;p&gt;The date when the access key was created.&lt;/p&gt;
  final pulumi.Input<String>? createDate;

  /// &lt;p&gt;The status of the access key. &lt;code&gt;Active&lt;/code&gt; means that the key is valid for API calls; &lt;code&gt;Inactive&lt;/code&gt; means it is not.&lt;/p&gt;
  final pulumi.Input<StatusTypeEnumValueResponse>? status;

  /// &lt;p&gt;The name of the IAM user that the key is associated with.&lt;/p&gt;
  final pulumi.Input<String>? userName;

  /// Creates a new [AwsIamAccessKeyMetadataPropertiesResponse].
  /// [accessKeyId] &lt;p&gt;The ID for this access key.&lt;/p&gt;
  /// [createDate] &lt;p&gt;The date when the access key was created.&lt;/p&gt;
  /// [status] &lt;p&gt;The status of the access key. &lt;code&gt;Active&lt;/code&gt; means that the key is valid for API calls; &lt;code&gt;Inactive&lt;/code&gt; means it is not.&lt;/p&gt;
  /// [userName] &lt;p&gt;The name of the IAM user that the key is associated with.&lt;/p&gt;
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
      'status':
          ?pulumi.Input.mapOptionalInputValue<
            StatusTypeEnumValueResponse,
            Map<String, dynamic>
          >(status, (value) => value.toMap()),
      'userName': ?userName,
    };
  }

  factory AwsIamAccessKeyMetadataPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AwsIamAccessKeyMetadataPropertiesResponse(
      accessKeyId: (() {
        final guardedValue = map['accessKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createDate: (() {
        final guardedValue = map['createDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StatusTypeEnumValueResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      userName: (() {
        final guardedValue = map['userName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
