// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_lambda_access_point_configuration.dart';

/// {@template pulumi_s3_control_object_lambda_access_point_object_lambda_access_point_args_doc}
/// The set of arguments for ObjectLambdaAccessPoint.
/// {@endtemplate}
/// {@macro pulumi_s3_control_object_lambda_access_point_object_lambda_access_point_args_doc}
class ObjectLambdaAccessPointArgs {
  /// The AWS account ID for the owner of the bucket for which you want to create an Object Lambda Access Point. Defaults to automatically determined account ID of the AWS provider.
  final pulumi.Input<String>? accountId;
  /// A configuration block containing details about the Object Lambda Access Point. See Configuration below for more details.
  final pulumi.Input<ObjectLambdaAccessPointConfiguration> configuration;
  /// The name for this Object Lambda Access Point.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ObjectLambdaAccessPointArgs].
  /// [accountId] The AWS account ID for the owner of the bucket for which you want to create an Object Lambda Access Point. Defaults to automatically determined account ID of the AWS provider.
  /// [configuration] A configuration block containing details about the Object Lambda Access Point. See Configuration below for more details.
  /// [name] The name for this Object Lambda Access Point.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ObjectLambdaAccessPointArgs({
    this.accountId,
    required this.configuration,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'configuration': pulumi.Input.mapInputValue<ObjectLambdaAccessPointConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
    };
  }

  factory ObjectLambdaAccessPointArgs.fromMap(Map<String, dynamic> map) {
    return ObjectLambdaAccessPointArgs(
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      configuration: (ObjectLambdaAccessPointConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

