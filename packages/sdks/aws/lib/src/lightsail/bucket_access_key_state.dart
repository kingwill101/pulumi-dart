// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketAccessKey resources.
class BucketAccessKeyState {
  /// Access key ID.
  final pulumi.Input<String>? accessKeyId;
  /// Name of the bucket that the access key will belong to and grant access to.
  final pulumi.Input<String>? bucketName;
  /// Date and time when the access key was created.
  final pulumi.Input<String>? createdAt;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Secret access key used to sign requests. This attribute is not available for imported resources. Note that this will be written to the state file.
  final pulumi.Input<String>? secretAccessKey;
  /// Status of the access key.
  final pulumi.Input<String>? status;

  /// Creates a new [BucketAccessKeyState].
  /// [accessKeyId] Access key ID.
  /// [bucketName] Name of the bucket that the access key will belong to and grant access to.
  /// [createdAt] Date and time when the access key was created.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secretAccessKey] Secret access key used to sign requests. This attribute is not available for imported resources. Note that this will be written to the state file.
  /// [status] Status of the access key.
  BucketAccessKeyState({
    pulumi.Output<String>? accessKeyId,
    pulumi.Output<String>? bucketName,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? region,
    pulumi.Output<String>? secretAccessKey,
    pulumi.Output<String>? status,
  }) :
      accessKeyId = pulumi.Input.asOptionalInput<String>(accessKeyId),
      bucketName = pulumi.Input.asOptionalInput<String>(bucketName),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      region = pulumi.Input.asOptionalInput<String>(region),
      secretAccessKey = pulumi.Input.asOptionalInput<String>(secretAccessKey),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': ?accessKeyId,
      'bucketName': ?bucketName,
      'createdAt': ?createdAt,
      'region': ?region,
      'secretAccessKey': ?secretAccessKey,
      'status': ?status,
    };
  }

  factory BucketAccessKeyState.fromMap(Map<String, dynamic> map) {
    return BucketAccessKeyState(
      accessKeyId: map['accessKeyId'] == null ? null : pulumi.Output.create<String>(map['accessKeyId'] as String),
      bucketName: map['bucketName'] == null ? null : pulumi.Output.create<String>(map['bucketName'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      secretAccessKey: map['secretAccessKey'] == null ? null : pulumi.Output.create<String>(map['secretAccessKey'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

