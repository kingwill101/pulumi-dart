// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../resource_server_scope/resource_server_scope.dart';

/// The set of arguments for ResourceServer.
class ResourceServerArgs {
  /// An identifier for the resource server.
  final Input<String> identifier;

  /// A name for the resource server.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A list of Authorization Scope.
  final Input<List<ResourceServerScope>>? scopes;

  /// User pool the client belongs to.
  final Input<String> userPoolId;

  ResourceServerArgs({
    required this.identifier,
    this.name,
    this.region,
    this.scopes,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identifier'] = identifier;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final scopesValue = scopes;
    if (scopesValue != null) {
      map['scopes'] = Input.mapOptionalInputValue<List<ResourceServerScope>,
              List<Map<String, dynamic>>>(
          scopesValue,
          (value) =>
              Input.encodeList<ResourceServerScope, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    map['userPoolId'] = userPoolId;
    return map;
  }

  factory ResourceServerArgs.fromMap(Map<String, dynamic> map) {
    return ResourceServerArgs(
      identifier: Input.asInput<String>(map['identifier']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      scopes: Input.asOptionalInput<List<ResourceServerScope>>(map['scopes']),
      userPoolId: Input.asInput<String>(map['userPoolId']),
    );
  }
}
