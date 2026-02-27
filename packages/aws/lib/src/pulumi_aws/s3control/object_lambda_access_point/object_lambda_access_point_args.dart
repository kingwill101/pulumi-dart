// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../object_lambda_access_point_configuration/object_lambda_access_point_configuration.dart';

/// The set of arguments for ObjectLambdaAccessPoint.
class ObjectLambdaAccessPointArgs {
  /// The AWS account ID for the owner of the bucket for which you want to create an Object Lambda Access Point. Defaults to automatically determined account ID of the AWS provider.
  final pulumi.Input<String>? accountId;

  /// A configuration block containing details about the Object Lambda Access Point. See Configuration below for more details.
  final pulumi.Input<ObjectLambdaAccessPointConfiguration> configuration;

  /// The name for this Object Lambda Access Point.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  ObjectLambdaAccessPointArgs({
    this.accountId,
    required this.configuration,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    map['configuration'] = pulumi.Input.mapInputValue<
        ObjectLambdaAccessPointConfiguration,
        Map<String, dynamic>>(configuration, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ObjectLambdaAccessPointArgs.fromMap(Map<String, dynamic> map) {
    return ObjectLambdaAccessPointArgs(
      accountId: pulumi.Input.asOptionalInput<String>(map['accountId']),
      configuration: pulumi.Input.asInput<ObjectLambdaAccessPointConfiguration>(
          map['configuration']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
