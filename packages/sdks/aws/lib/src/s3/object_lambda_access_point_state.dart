// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_lambda_access_point_configuration.dart';

/// Input properties used for looking up and filtering ObjectLambdaAccessPoint resources.
class ObjectLambdaAccessPointState {
  /// The AWS account ID for the owner of the bucket for which you want to create an Object Lambda Access Point. Defaults to automatically determined account ID of the AWS provider.
  final pulumi.Input<String>? accountId;
  /// Alias for the S3 Object Lambda Access Point.
  final pulumi.Input<String>? alias;
  /// Amazon Resource Name (ARN) of the Object Lambda Access Point.
  final pulumi.Input<String>? arn;
  /// A configuration block containing details about the Object Lambda Access Point. See Configuration below for more details.
  final pulumi.Input<ObjectLambdaAccessPointConfiguration>? configuration;
  /// The name for this Object Lambda Access Point.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ObjectLambdaAccessPointState].
  /// [accountId] The AWS account ID for the owner of the bucket for which you want to create an Object Lambda Access Point. Defaults to automatically determined account ID of the AWS provider.
  /// [alias] Alias for the S3 Object Lambda Access Point.
  /// [arn] Amazon Resource Name (ARN) of the Object Lambda Access Point.
  /// [configuration] A configuration block containing details about the Object Lambda Access Point. See Configuration below for more details.
  /// [name] The name for this Object Lambda Access Point.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ObjectLambdaAccessPointState({
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? alias,
    pulumi.Output<String>? arn,
    pulumi.Output<ObjectLambdaAccessPointConfiguration>? configuration,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      alias = pulumi.Input.asOptionalInput<String>(alias),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      configuration = pulumi.Input.asOptionalInput<ObjectLambdaAccessPointConfiguration>(configuration),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'alias': ?alias,
      'arn': ?arn,
      'configuration': ?pulumi.Input.mapOptionalInputValue<ObjectLambdaAccessPointConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
    };
  }

  factory ObjectLambdaAccessPointState.fromMap(Map<String, dynamic> map) {
    return ObjectLambdaAccessPointState(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      alias: map['alias'] == null ? null : pulumi.Output.create<String>(map['alias'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      configuration: map['configuration'] == null ? null : pulumi.Output.create<ObjectLambdaAccessPointConfiguration>(ObjectLambdaAccessPointConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

