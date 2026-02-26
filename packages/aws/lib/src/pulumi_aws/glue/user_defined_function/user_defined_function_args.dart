// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../user_defined_function_resource_uri/user_defined_function_resource_uri.dart';

/// The set of arguments for UserDefinedFunction.
class UserDefinedFunctionArgs {
  /// ID of the Glue Catalog to create the function in. If omitted, this defaults to the AWS Account ID.
  final Input<String>? catalogId;

  /// The Java class that contains the function code.
  final Input<String> className;

  /// The name of the Database to create the Function.
  final Input<String> databaseName;

  /// The name of the function.
  final Input<String>? name;

  /// The owner of the function.
  final Input<String> ownerName;

  /// The owner type. can be one of `USER`, `ROLE`, and `GROUP`.
  final Input<String> ownerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The configuration block for Resource URIs. See resource uris below for more details.
  final Input<List<UserDefinedFunctionResourceUri>>? resourceUris;

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
      map['resourceUris'] = Input.mapOptionalInputValue<
              List<UserDefinedFunctionResourceUri>, List<Map<String, dynamic>>>(
          resourceUrisValue,
          (value) => Input.encodeList<UserDefinedFunctionResourceUri,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory UserDefinedFunctionArgs.fromMap(Map<String, dynamic> map) {
    return UserDefinedFunctionArgs(
      catalogId: Input.asOptionalInput<String>(map['catalogId']),
      className: Input.asInput<String>(map['className']),
      databaseName: Input.asInput<String>(map['databaseName']),
      name: Input.asOptionalInput<String>(map['name']),
      ownerName: Input.asInput<String>(map['ownerName']),
      ownerType: Input.asInput<String>(map['ownerType']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceUris: Input.asOptionalInput<List<UserDefinedFunctionResourceUri>>(
          map['resourceUris']),
    );
  }
}
