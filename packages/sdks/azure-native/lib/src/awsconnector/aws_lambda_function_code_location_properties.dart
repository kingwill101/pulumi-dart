// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of awsLambdaFunctionCodeLocation
class AwsLambdaFunctionCodeLocationProperties {
  /// <p>URI of a container image in the Amazon ECR registry.</p>
  final pulumi.Input<String>? imageUri;
  /// <p>A presigned URL that you can use to download the deployment package.</p>
  final pulumi.Input<String>? location;
  /// <p>The service that's hosting the file.</p>
  final pulumi.Input<String>? repositoryType;
  /// <p>The resolved URI for the image.</p>
  final pulumi.Input<String>? resolvedImageUri;

  /// Creates a new [AwsLambdaFunctionCodeLocationProperties].
  /// [imageUri] <p>URI of a container image in the Amazon ECR registry.</p>
  /// [location] <p>A presigned URL that you can use to download the deployment package.</p>
  /// [repositoryType] <p>The service that's hosting the file.</p>
  /// [resolvedImageUri] <p>The resolved URI for the image.</p>
  AwsLambdaFunctionCodeLocationProperties({
    this.imageUri,
    this.location,
    this.repositoryType,
    this.resolvedImageUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageUri': ?imageUri,
      'location': ?location,
      'repositoryType': ?repositoryType,
      'resolvedImageUri': ?resolvedImageUri,
    };
  }

  factory AwsLambdaFunctionCodeLocationProperties.fromMap(Map<String, dynamic> map) {
    return AwsLambdaFunctionCodeLocationProperties(
      imageUri: map['imageUri'] == null ? null : (map['imageUri']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      repositoryType: map['repositoryType'] == null ? null : (map['repositoryType']! as String).input(),
      resolvedImageUri: map['resolvedImageUri'] == null ? null : (map['resolvedImageUri']! as String).input(),
    );
  }
}

