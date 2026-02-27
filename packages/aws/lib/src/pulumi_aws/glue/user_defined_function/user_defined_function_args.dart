// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../user_defined_function_resource_uri/user_defined_function_resource_uri.dart';

/// The set of arguments for UserDefinedFunction.
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

  UserDefinedFunctionArgs({
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
      catalogId: pulumi.Input.asOptionalInput<String>(map['catalogId']),
      className: pulumi.Input.asInput<String>(map['className']),
      databaseName: pulumi.Input.asInput<String>(map['databaseName']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      ownerName: pulumi.Input.asInput<String>(map['ownerName']),
      ownerType: pulumi.Input.asInput<String>(map['ownerType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceUris:
          pulumi.Input.asOptionalInput<List<UserDefinedFunctionResourceUri>>(
              map['resourceUris']),
    );
  }
}
