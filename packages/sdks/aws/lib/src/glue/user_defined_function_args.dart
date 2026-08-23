// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_defined_function_resource_uri.dart';

/// {@template pulumi_glue_user_defined_function_user_defined_function_args_doc}
/// The set of arguments for UserDefinedFunction.
/// {@endtemplate}
/// {@macro pulumi_glue_user_defined_function_user_defined_function_args_doc}
class UserDefinedFunctionArgs {
  /// ID of the Glue Catalog to create the function in. If omitted, this defaults to the AWS Account ID.
  final pulumi.Input<String>? catalogId;
  /// The Java class that contains the function code.
  final pulumi.Input<String> className;
  /// The name of the Database to create the Function.
  final pulumi.Input<String> databaseName;
  /// The name of the function.
  final pulumi.Input<String>? name;
  /// The owner of the function.
  final pulumi.Input<String> ownerName;
  /// The owner type. can be one of `USER`, `ROLE`, and `GROUP`.
  final pulumi.Input<String> ownerType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The configuration block for Resource URIs. See resource uris below for more details.
  final pulumi.Input<List<UserDefinedFunctionResourceUri>>? resourceUris;

  /// Creates a new [UserDefinedFunctionArgs].
  /// [catalogId] ID of the Glue Catalog to create the function in. If omitted, this defaults to the AWS Account ID.
  /// [className] The Java class that contains the function code.
  /// [databaseName] The name of the Database to create the Function.
  /// [name] The name of the function.
  /// [ownerName] The owner of the function.
  /// [ownerType] The owner type. can be one of `USER`, `ROLE`, and `GROUP`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceUris] The configuration block for Resource URIs. See resource uris below for more details.
  const UserDefinedFunctionArgs({
    this.catalogId,
    required this.className,
    required this.databaseName,
    this.name,
    required this.ownerName,
    required this.ownerType,
    this.region,
    this.resourceUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'className': className,
      'databaseName': databaseName,
      'name': ?name,
      'ownerName': ownerName,
      'ownerType': ownerType,
      'region': ?region,
      'resourceUris': ?pulumi.Input.mapOptionalInputValue<List<UserDefinedFunctionResourceUri>, List<Map<String, dynamic>>>(resourceUris, (value) => pulumi.Input.encodeList<UserDefinedFunctionResourceUri, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory UserDefinedFunctionArgs.fromMap(Map<String, dynamic> map) {
    return UserDefinedFunctionArgs(
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      className: pulumi.Input.fromValue(map['className'] as String),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerName: pulumi.Input.fromValue(map['ownerName'] as String),
      ownerType: pulumi.Input.fromValue(map['ownerType'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceUris: (() { final guardedValue = map['resourceUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserDefinedFunctionResourceUri>(guardedValue, (value) => UserDefinedFunctionResourceUri.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
