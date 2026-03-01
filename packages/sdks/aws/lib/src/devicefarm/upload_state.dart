// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Upload resources.
class UploadState {
  /// The Amazon Resource Name of this upload.
  final pulumi.Input<String>? arn;
  /// The upload's category.
  final pulumi.Input<String>? category;
  /// The upload's content type (for example, application/octet-stream).
  final pulumi.Input<String>? contentType;
  /// The upload's metadata. For example, for Android, this contains information that is parsed from the manifest and is displayed in the AWS Device Farm console after the associated app is uploaded.
  final pulumi.Input<String>? metadata;
  /// The upload's file name. The name should not contain any forward slashes (/). If you are uploading an iOS app, the file name must end with the .ipa extension. If you are uploading an Android app, the file name must end with the .apk extension. For all others, the file name must end with the .zip file extension.
  final pulumi.Input<String>? name;
  /// The ARN of the project for the upload.
  final pulumi.Input<String>? projectArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The upload's upload type. See [AWS Docs](https://docs.aws.amazon.com/devicefarm/latest/APIReference/API_CreateUpload.html#API_CreateUpload_RequestSyntax) for valid list of values.
  final pulumi.Input<String>? type;
  /// The presigned Amazon S3 URL that was used to store a file using a PUT request.
  final pulumi.Input<String>? url;

  /// Creates a new [UploadState].
  /// [arn] The Amazon Resource Name of this upload.
  /// [category] The upload's category.
  /// [contentType] The upload's content type (for example, application/octet-stream).
  /// [metadata] The upload's metadata. For example, for Android, this contains information that is parsed from the manifest and is displayed in the AWS Device Farm console after the associated app is uploaded.
  /// [name] The upload's file name. The name should not contain any forward slashes (/). If you are uploading an iOS app, the file name must end with the .ipa extension. If you are uploading an Android app, the file name must end with the .apk extension. For all others, the file name must end with the .zip file extension.
  /// [projectArn] The ARN of the project for the upload.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [type] The upload's upload type. See [AWS Docs](https://docs.aws.amazon.com/devicefarm/latest/APIReference/API_CreateUpload.html#API_CreateUpload_RequestSyntax) for valid list of values.
  /// [url] The presigned Amazon S3 URL that was used to store a file using a PUT request.
  UploadState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? category,
    pulumi.Output<String>? contentType,
    pulumi.Output<String>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<String>? projectArn,
    pulumi.Output<String>? region,
    pulumi.Output<String>? type,
    pulumi.Output<String>? url,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      category = pulumi.Input.asOptionalInput<String>(category),
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      metadata = pulumi.Input.asOptionalInput<String>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectArn = pulumi.Input.asOptionalInput<String>(projectArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      type = pulumi.Input.asOptionalInput<String>(type),
      url = pulumi.Input.asOptionalInput<String>(url);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'category': ?category,
      'contentType': ?contentType,
      'metadata': ?metadata,
      'name': ?name,
      'projectArn': ?projectArn,
      'region': ?region,
      'type': ?type,
      'url': ?url,
    };
  }

  factory UploadState.fromMap(Map<String, dynamic> map) {
    return UploadState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      category: map['category'] == null ? null : pulumi.Output.create<String>(map['category'] as String),
      contentType: map['contentType'] == null ? null : pulumi.Output.create<String>(map['contentType'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<String>(map['metadata'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectArn: map['projectArn'] == null ? null : pulumi.Output.create<String>(map['projectArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
    );
  }
}

