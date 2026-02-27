// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Upload.
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

  UploadArgs({
    this.contentType,
    this.name,
    required this.projectArn,
    this.region,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contentTypeValue = contentType;
    if (contentTypeValue != null) {
      map['contentType'] = contentTypeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['projectArn'] = projectArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['type'] = type;
    return map;
  }

  factory UploadArgs.fromMap(Map<String, dynamic> map) {
    return UploadArgs(
      contentType: pulumi.Input.asOptionalInput<String>(map['contentType']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      projectArn: pulumi.Input.asInput<String>(map['projectArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
