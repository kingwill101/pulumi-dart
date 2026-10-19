// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_defined_function_resource_uri.dart';

/// Input properties used for looking up and filtering UserDefinedFunction resources.
class UserDefinedFunctionState {
  /// ARN of the Glue User Defined Function.
  final pulumi.Input<String?>? arn;
  /// ID of the Glue Catalog to create the function in. If omitted, this defaults to the AWS Account ID.
  final pulumi.Input<String?>? catalogId;
  /// Java class that contains the function code.
  final pulumi.Input<String?>? className;
  /// Time at which the function was created.
  final pulumi.Input<String?>? createTime;
  /// Name of the Database to create the Function.
  final pulumi.Input<String?>? databaseName;
  /// Name of the function.
  final pulumi.Input<String?>? name;
  /// Owner of the function.
  final pulumi.Input<String?>? ownerName;
  /// Owner type. can be one of `USER`, `ROLE`, and `GROUP`.
  final pulumi.Input<String?>? ownerType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Configuration block for Resource URIs. See `resourceUris` Block below for more details.
  final pulumi.Input<List<UserDefinedFunctionResourceUri>?>? resourceUris;

  /// Creates a new [UserDefinedFunctionState].
  /// [arn] ARN of the Glue User Defined Function.
  /// [catalogId] ID of the Glue Catalog to create the function in. If omitted, this defaults to the AWS Account ID.
  /// [className] Java class that contains the function code.
  /// [createTime] Time at which the function was created.
  /// [databaseName] Name of the Database to create the Function.
  /// [name] Name of the function.
  /// [ownerName] Owner of the function.
  /// [ownerType] Owner type. can be one of `USER`, `ROLE`, and `GROUP`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceUris] Configuration block for Resource URIs. See `resourceUris` Block below for more details.
  const UserDefinedFunctionState({
    this.arn,
    this.catalogId,
    this.className,
    this.createTime,
    this.databaseName,
    this.name,
    this.ownerName,
    this.ownerType,
    this.region,
    this.resourceUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'catalogId': ?catalogId,
      'className': ?className,
      'createTime': ?createTime,
      'databaseName': ?databaseName,
      'name': ?name,
      'ownerName': ?ownerName,
      'ownerType': ?ownerType,
      'region': ?region,
      'resourceUris': ?pulumi.Input.mapOptionalInputValue<List<UserDefinedFunctionResourceUri>, List<Map<String, dynamic>>>(resourceUris, (value) => pulumi.Input.encodeList<UserDefinedFunctionResourceUri, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory UserDefinedFunctionState.fromMap(Map<String, dynamic> map) {
    return UserDefinedFunctionState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      className: (() { final guardedValue = map['className']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerName: (() { final guardedValue = map['ownerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerType: (() { final guardedValue = map['ownerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceUris: (() { final guardedValue = map['resourceUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserDefinedFunctionResourceUri>(guardedValue, (value) => UserDefinedFunctionResourceUri.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
