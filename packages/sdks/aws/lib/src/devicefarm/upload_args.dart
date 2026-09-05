// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devicefarm_upload_upload_args_doc}
/// The set of arguments for Upload.
/// {@endtemplate}
/// {@macro pulumi_devicefarm_upload_upload_args_doc}
class UploadArgs {
  /// The upload's content type (for example, application/octet-stream).
  final pulumi.Input<String?>? contentType;
  /// The upload's file name. The name should not contain any forward slashes (/). If you are uploading an iOS app, the file name must end with the .ipa extension. If you are uploading an Android app, the file name must end with the .apk extension. For all others, the file name must end with the .zip file extension.
  final pulumi.Input<String?>? name;
  /// The ARN of the project for the upload.
  final pulumi.Input<String> projectArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The upload's upload type. See [AWS Docs](https://docs.aws.amazon.com/devicefarm/latest/APIReference/API_CreateUpload.html#API_CreateUpload_RequestSyntax) for valid list of values.
  final pulumi.Input<String> type;

  /// Creates a new [UploadArgs].
  /// [contentType] The upload's content type (for example, application/octet-stream).
  /// [name] The upload's file name. The name should not contain any forward slashes (/). If you are uploading an iOS app, the file name must end with the .ipa extension. If you are uploading an Android app, the file name must end with the .apk extension. For all others, the file name must end with the .zip file extension.
  /// [projectArn] The ARN of the project for the upload.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [type] The upload's upload type. See [AWS Docs](https://docs.aws.amazon.com/devicefarm/latest/APIReference/API_CreateUpload.html#API_CreateUpload_RequestSyntax) for valid list of values.
  const UploadArgs({
    this.contentType,
    this.name,
    required this.projectArn,
    this.region,
    required this.type,
  });

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
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectArn: pulumi.Input.fromValue(map['projectArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
