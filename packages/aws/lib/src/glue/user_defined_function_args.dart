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
    String? catalogId,
    required String className,
    required String databaseName,
    String? name,
    required String ownerName,
    required String ownerType,
    String? region,
    List<UserDefinedFunctionResourceUri>? resourceUris,
  })  : catalogId = pulumi.Input.asOptionalInput<String>(catalogId),
        className = pulumi.Input.asInput<String>(className),
        databaseName = pulumi.Input.asInput<String>(databaseName),
        name = pulumi.Input.asOptionalInput<String>(name),
        ownerName = pulumi.Input.asInput<String>(ownerName),
        ownerType = pulumi.Input.asInput<String>(ownerType),
        region = pulumi.Input.asOptionalInput<String>(region),
        resourceUris =
            pulumi.Input.asOptionalInput<List<UserDefinedFunctionResourceUri>>(
                resourceUris);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    map['className'] = className;
    map['databaseName'] = databaseName;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['ownerName'] = ownerName;
    map['ownerType'] = ownerType;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resourceUrisValue = resourceUris;
    if (resourceUrisValue != null) {
      map['resourceUris'] = pulumi.Input.mapOptionalInputValue<
              List<UserDefinedFunctionResourceUri>, List<Map<String, dynamic>>>(
          resourceUrisValue,
          (value) => pulumi.Input.encodeList<UserDefinedFunctionResourceUri,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory UserDefinedFunctionArgs.fromMap(Map<String, dynamic> map) {
    return UserDefinedFunctionArgs(
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      className: map['className'] as String,
      databaseName: map['databaseName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      ownerName: map['ownerName'] as String,
      ownerType: map['ownerType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resourceUris: map['resourceUris'] == null
          ? null
          : pulumi.Input.decodeList<UserDefinedFunctionResourceUri>(
              map['resourceUris'],
              (value) => UserDefinedFunctionResourceUri.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
