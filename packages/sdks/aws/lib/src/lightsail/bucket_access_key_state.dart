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
    this.accessKeyId,
    this.bucketName,
    this.createdAt,
    this.region,
    this.secretAccessKey,
    this.status,
  });

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
      accessKeyId: (() { final guardedValue = map['accessKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretAccessKey: (() { final guardedValue = map['secretAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

