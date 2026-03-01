// ignore_for_file: unused_element, unnecessary_cast


/// Definition of awsLambdaFunctionCodeLocation
class AwsLambdaFunctionCodeLocationPropertiesResponse {
  /// <p>URI of a container image in the Amazon ECR registry.</p>
  final String? imageUri;
  /// <p>A presigned URL that you can use to download the deployment package.</p>
  final String? location;
  /// <p>The service that's hosting the file.</p>
  final String? repositoryType;
  /// <p>The resolved URI for the image.</p>
  final String? resolvedImageUri;

  /// Creates a new [AwsLambdaFunctionCodeLocationPropertiesResponse].
  /// [imageUri] <p>URI of a container image in the Amazon ECR registry.</p>
  /// [location] <p>A presigned URL that you can use to download the deployment package.</p>
  /// [repositoryType] <p>The service that's hosting the file.</p>
  /// [resolvedImageUri] <p>The resolved URI for the image.</p>
  AwsLambdaFunctionCodeLocationPropertiesResponse({
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

  factory AwsLambdaFunctionCodeLocationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsLambdaFunctionCodeLocationPropertiesResponse(
      imageUri: map['imageUri'] == null ? null : map['imageUri'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      repositoryType: map['repositoryType'] == null ? null : map['repositoryType'] as String,
      resolvedImageUri: map['resolvedImageUri'] == null ? null : map['resolvedImageUri'] as String,
    );
  }
}

