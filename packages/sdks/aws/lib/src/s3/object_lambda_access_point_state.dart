// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_lambda_access_point_configuration.dart';

/// Input properties used for looking up and filtering ObjectLambdaAccessPoint resources.
class ObjectLambdaAccessPointState {
  /// AWS account ID for the owner of the bucket for which you want to create an Object Lambda Access Point. Defaults to automatically determined account ID of the AWS provider.
  final pulumi.Input<String>? accountId;
  /// Alias for the S3 Object Lambda Access Point.
  final pulumi.Input<String>? alias;
  /// Amazon Resource Name (ARN) of the Object Lambda Access Point.
  final pulumi.Input<String>? arn;
  /// Configuration block containing details about the Object Lambda Access Point. See `configuration` Block below for more details.
  final pulumi.Input<ObjectLambdaAccessPointConfiguration>? configuration;
  /// Name for this Object Lambda Access Point.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ObjectLambdaAccessPointState].
  /// [accountId] AWS account ID for the owner of the bucket for which you want to create an Object Lambda Access Point. Defaults to automatically determined account ID of the AWS provider.
  /// [alias] Alias for the S3 Object Lambda Access Point.
  /// [arn] Amazon Resource Name (ARN) of the Object Lambda Access Point.
  /// [configuration] Configuration block containing details about the Object Lambda Access Point. See `configuration` Block below for more details.
  /// [name] Name for this Object Lambda Access Point.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const ObjectLambdaAccessPointState({
    this.accountId,
    this.alias,
    this.arn,
    this.configuration,
    this.name,
    this.region,
  });

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
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectLambdaAccessPointConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
