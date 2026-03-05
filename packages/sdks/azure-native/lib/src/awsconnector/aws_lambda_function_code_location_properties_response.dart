// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of awsLambdaFunctionCodeLocation
class AwsLambdaFunctionCodeLocationPropertiesResponse {
  /// &lt;p&gt;URI of a container image in the Amazon ECR registry.&lt;/p&gt;
  final pulumi.Input<String>? imageUri;
  /// &lt;p&gt;A presigned URL that you can use to download the deployment package.&lt;/p&gt;
  final pulumi.Input<String>? location;
  /// &lt;p&gt;The service that's hosting the file.&lt;/p&gt;
  final pulumi.Input<String>? repositoryType;
  /// &lt;p&gt;The resolved URI for the image.&lt;/p&gt;
  final pulumi.Input<String>? resolvedImageUri;

  /// Creates a new [AwsLambdaFunctionCodeLocationPropertiesResponse].
  /// [imageUri] &lt;p&gt;URI of a container image in the Amazon ECR registry.&lt;/p&gt;
  /// [location] &lt;p&gt;A presigned URL that you can use to download the deployment package.&lt;/p&gt;
  /// [repositoryType] &lt;p&gt;The service that's hosting the file.&lt;/p&gt;
  /// [resolvedImageUri] &lt;p&gt;The resolved URI for the image.&lt;/p&gt;
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
      imageUri: (() { final guardedValue = map['imageUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryType: (() { final guardedValue = map['repositoryType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resolvedImageUri: (() { final guardedValue = map['resolvedImageUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

