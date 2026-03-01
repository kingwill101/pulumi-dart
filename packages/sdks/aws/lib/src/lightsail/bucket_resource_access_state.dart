// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketResourceAccess resources.
class BucketResourceAccessState {
  /// Name of the bucket to grant access to.
  final pulumi.Input<String>? bucketName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the resource to grant bucket access.
  final pulumi.Input<String>? resourceName;

  /// Creates a new [BucketResourceAccessState].
  /// [bucketName] Name of the bucket to grant access to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceName] Name of the resource to grant bucket access.
  BucketResourceAccessState({
    pulumi.Output<String>? bucketName,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceName,
  }) :
      bucketName = pulumi.Input.asOptionalInput<String>(bucketName),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'region': ?region,
      'resourceName': ?resourceName,
    };
  }

  factory BucketResourceAccessState.fromMap(Map<String, dynamic> map) {
    return BucketResourceAccessState(
      bucketName: map['bucketName'] == null ? null : pulumi.Output.create<String>(map['bucketName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceName: map['resourceName'] == null ? null : pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

