// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devicefarm_upload_upload_args_doc}
/// The set of arguments for Upload.
/// {@endtemplate}
/// {@macro pulumi_devicefarm_upload_upload_args_doc}
class UploadArgs {
  /// The upload's content type (for example, application/octet-stream).
  final pulumi.Input<String>? contentType;
  /// The upload's file name. The name should not contain any forward slashes (/). If you are uploading an iOS app, the file name must end with the .ipa extension. If you are uploading an Android app, the file name must end with the .apk extension. For all others, the file name must end with the .zip file extension.
  final pulumi.Input<String>? name;
  /// The ARN of the project for the upload.
  final pulumi.Input<String> projectArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The upload's upload type. See [AWS Docs](https://docs.aws.amazon.com/devicefarm/latest/APIReference/API_CreateUpload.html#API_CreateUpload_RequestSyntax) for valid list of values.
  final pulumi.Input<String> type;

  /// Creates a new [UploadArgs].
  /// [contentType] The upload's content type (for example, application/octet-stream).
  /// [name] The upload's file name. The name should not contain any forward slashes (/). If you are uploading an iOS app, the file name must end with the .ipa extension. If you are uploading an Android app, the file name must end with the .apk extension. For all others, the file name must end with the .zip file extension.
  /// [projectArn] The ARN of the project for the upload.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [type] The upload's upload type. See [AWS Docs](https://docs.aws.amazon.com/devicefarm/latest/APIReference/API_CreateUpload.html#API_CreateUpload_RequestSyntax) for valid list of values.
  UploadArgs({
    String? contentType,
    String? name,
    required String projectArn,
    String? region,
    required String type,
  }) :
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectArn = pulumi.Input.asInput<String>(projectArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': ?contentType,
      'name': ?name,
      'projectArn': projectArn,
      'region': ?region,
      'type': type,
    };
  }

  factory UploadArgs.fromMap(Map<String, dynamic> map) {
    return UploadArgs(
      contentType: map['contentType'] == null ? null : map['contentType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      projectArn: map['projectArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      type: map['type'] as String,
    );
  }
}

