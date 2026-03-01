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
  UserDefinedFunctionArgs({
    pulumi.Output<String>? catalogId,
    required pulumi.Output<String> className,
    required pulumi.Output<String> databaseName,
    pulumi.Output<String>? name,
    required pulumi.Output<String> ownerName,
    required pulumi.Output<String> ownerType,
    pulumi.Output<String>? region,
    pulumi.Output<List<UserDefinedFunctionResourceUri>>? resourceUris,
  }) :
      catalogId = pulumi.Input.asOptionalInput<String>(catalogId),
      className = pulumi.Input.asInput<String>(className),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      name = pulumi.Input.asOptionalInput<String>(name),
      ownerName = pulumi.Input.asInput<String>(ownerName),
      ownerType = pulumi.Input.asInput<String>(ownerType),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceUris = pulumi.Input.asOptionalInput<List<UserDefinedFunctionResourceUri>>(resourceUris);

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
      catalogId: map['catalogId'] == null ? null : pulumi.Output.create<String>(map['catalogId'] as String),
      className: pulumi.Output.create<String>(map['className'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ownerName: pulumi.Output.create<String>(map['ownerName'] as String),
      ownerType: pulumi.Output.create<String>(map['ownerType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceUris: map['resourceUris'] == null ? null : pulumi.Output.create<List<UserDefinedFunctionResourceUri>>(pulumi.Input.decodeList<UserDefinedFunctionResourceUri>(map['resourceUris'], (value) => UserDefinedFunctionResourceUri.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

