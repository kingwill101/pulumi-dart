// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_reference_response.dart';

/// The Amazon S3 settings needed for the interim Amazon S3 when copying from Amazon Redshift with unload. With this, data from Amazon Redshift source will be unloaded into S3 first and then copied into the targeted sink from the interim S3.
class RedshiftUnloadSettingsResponse {
  /// The bucket of the interim Amazon S3 which will be used to store the unloaded data from Amazon Redshift source. The bucket must be in the same region as the Amazon Redshift source. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> bucketName;
  /// The name of the Amazon S3 linked service which will be used for the unload operation when copying from the Amazon Redshift source.
  final pulumi.Input<LinkedServiceReferenceResponse> s3LinkedServiceName;

  /// Creates a new [RedshiftUnloadSettingsResponse].
  /// [bucketName] The bucket of the interim Amazon S3 which will be used to store the unloaded data from Amazon Redshift source. The bucket must be in the same region as the Amazon Redshift source. Type: string (or Expression with resultType string).
  /// [s3LinkedServiceName] The name of the Amazon S3 linked service which will be used for the unload operation when copying from the Amazon Redshift source.
  RedshiftUnloadSettingsResponse({
    required this.bucketName,
    required this.s3LinkedServiceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      's3LinkedServiceName': pulumi.Input.mapInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(s3LinkedServiceName, (value) => value.toMap()),
    };
  }

  factory RedshiftUnloadSettingsResponse.fromMap(Map<String, dynamic> map) {
    return RedshiftUnloadSettingsResponse(
      bucketName: pulumi.Input.fromValue(map['bucketName']),
      s3LinkedServiceName: pulumi.Input.fromValue(LinkedServiceReferenceResponse.fromMap((map['s3LinkedServiceName']! as Map).cast<String, dynamic>())),
    );
  }
}

