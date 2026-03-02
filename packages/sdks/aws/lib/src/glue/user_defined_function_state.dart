// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_defined_function_resource_uri.dart';

/// Input properties used for looking up and filtering UserDefinedFunction resources.
class UserDefinedFunctionState {
  /// The ARN of the Glue User Defined Function.
  final pulumi.Input<String>? arn;
  /// ID of the Glue Catalog to create the function in. If omitted, this defaults to the AWS Account ID.
  final pulumi.Input<String>? catalogId;
  /// The Java class that contains the function code.
  final pulumi.Input<String>? className;
  /// The time at which the function was created.
  final pulumi.Input<String>? createTime;
  /// The name of the Database to create the Function.
  final pulumi.Input<String>? databaseName;
  /// The name of the function.
  final pulumi.Input<String>? name;
  /// The owner of the function.
  final pulumi.Input<String>? ownerName;
  /// The owner type. can be one of `USER`, `ROLE`, and `GROUP`.
  final pulumi.Input<String>? ownerType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The configuration block for Resource URIs. See resource uris below for more details.
  final pulumi.Input<List<UserDefinedFunctionResourceUri>>? resourceUris;

  /// Creates a new [UserDefinedFunctionState].
  /// [arn] The ARN of the Glue User Defined Function.
  /// [catalogId] ID of the Glue Catalog to create the function in. If omitted, this defaults to the AWS Account ID.
  /// [className] The Java class that contains the function code.
  /// [createTime] The time at which the function was created.
  /// [databaseName] The name of the Database to create the Function.
  /// [name] The name of the function.
  /// [ownerName] The owner of the function.
  /// [ownerType] The owner type. can be one of `USER`, `ROLE`, and `GROUP`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceUris] The configuration block for Resource URIs. See resource uris below for more details.
  UserDefinedFunctionState({
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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      catalogId: map['catalogId'] == null ? null : ((map['catalogId'] as String).input()).input(),
      className: map['className'] == null ? null : ((map['className'] as String).input()).input(),
      createTime: map['createTime'] == null ? null : ((map['createTime'] as String).input()).input(),
      databaseName: map['databaseName'] == null ? null : ((map['databaseName'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      ownerName: map['ownerName'] == null ? null : ((map['ownerName'] as String).input()).input(),
      ownerType: map['ownerType'] == null ? null : ((map['ownerType'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceUris: map['resourceUris'] == null ? null : ((pulumi.Input.decodeList<UserDefinedFunctionResourceUri>(map['resourceUris']!, (value) => UserDefinedFunctionResourceUri.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

