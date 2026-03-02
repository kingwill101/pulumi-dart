// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Code
class Code {
  /// URI of a [container image](https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html) in the Amazon ECR registry.
  final pulumi.Input<String>? imageUri;
  /// An Amazon S3 bucket in the same AWS-Region as your function. The bucket can be in a different AWS-account.
  final pulumi.Input<String>? s3Bucket;
  /// The Amazon S3 key of the deployment package.
  final pulumi.Input<String>? s3Key;
  /// For versioned objects, the version of the deployment package object to use.
  final pulumi.Input<String>? s3ObjectVersion;
  /// (Node.js and Python) The source code of your Lambda function. If you include your function source inline with this parameter, CFN places it in a file named ``index`` and zips it to create a [deployment package](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html). This zip file cannot exceed 4MB. For the ``Handler`` property, the first part of the handler identifier must be ``index``. For example, ``index.handler``.  For JSON, you must escape quotes and special characters such as newline (``\n``) with a backslash. If you specify a function that interacts with an AWS CloudFormation custom resource, you don't have to write your own functions to send responses to the custom resource that invoked the function. AWS CloudFormation provides a response module ([cfn-response](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-lambda-function-code-cfnresponsemodule.html)) that simplifies sending responses. See [Using Lambda with CloudFormation](https://docs.aws.amazon.com/lambda/latest/dg/services-cloudformation.html) for details.
  final pulumi.Input<String>? zipFile;

  /// Creates a new [Code].
  /// [imageUri] URI of a [container image](https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html) in the Amazon ECR registry.
  /// [s3Bucket] An Amazon S3 bucket in the same AWS-Region as your function. The bucket can be in a different AWS-account.
  /// [s3Key] The Amazon S3 key of the deployment package.
  /// [s3ObjectVersion] For versioned objects, the version of the deployment package object to use.
  /// [zipFile] (Node.js and Python) The source code of your Lambda function. If you include your function source inline with this parameter, CFN places it in a file named ``index`` and zips it to create a [deployment package](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html). This zip file cannot exceed 4MB. For the ``Handler`` property, the first part of the handler identifier must be ``index``. For example, ``index.handler``.  For JSON, you must escape quotes and special characters such as newline (``\n``) with a backslash. If you specify a function that interacts with an AWS CloudFormation custom resource, you don't have to write your own functions to send responses to the custom resource that invoked the function. AWS CloudFormation provides a response module ([cfn-response](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-lambda-function-code-cfnresponsemodule.html)) that simplifies sending responses. See [Using Lambda with CloudFormation](https://docs.aws.amazon.com/lambda/latest/dg/services-cloudformation.html) for details.
  Code({
    this.imageUri,
    this.s3Bucket,
    this.s3Key,
    this.s3ObjectVersion,
    this.zipFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageUri': ?imageUri,
      's3Bucket': ?s3Bucket,
      's3Key': ?s3Key,
      's3ObjectVersion': ?s3ObjectVersion,
      'zipFile': ?zipFile,
    };
  }

  factory Code.fromMap(Map<String, dynamic> map) {
    return Code(
      imageUri: map['imageUri'] == null ? null : (map['imageUri'] as String).input(),
      s3Bucket: map['s3Bucket'] == null ? null : (map['s3Bucket'] as String).input(),
      s3Key: map['s3Key'] == null ? null : (map['s3Key'] as String).input(),
      s3ObjectVersion: map['s3ObjectVersion'] == null ? null : (map['s3ObjectVersion'] as String).input(),
      zipFile: map['zipFile'] == null ? null : (map['zipFile'] as String).input(),
    );
  }
}

