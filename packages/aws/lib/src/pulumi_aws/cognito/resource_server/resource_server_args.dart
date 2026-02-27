// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../resource_server_scope/resource_server_scope.dart';

/// The set of arguments for ResourceServer.
class ResourceServerArgs {
  /// An identifier for the resource server.
  final pulumi.Input<String> identifier;

  /// A name for the resource server.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A list of Authorization Scope.
  final pulumi.Input<List<ResourceServerScope>>? scopes;

  /// User pool the client belongs to.
  final pulumi.Input<String> userPoolId;

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
      map['scopes'] = pulumi.Input.mapOptionalInputValue<
              List<ResourceServerScope>, List<Map<String, dynamic>>>(
          scopesValue,
          (value) => pulumi.Input.encodeList<ResourceServerScope,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['userPoolId'] = userPoolId;
    return map;
  }

  factory ResourceServerArgs.fromMap(Map<String, dynamic> map) {
    return ResourceServerArgs(
      identifier: pulumi.Input.asInput<String>(map['identifier']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      scopes: pulumi.Input.asOptionalInput<List<ResourceServerScope>>(
          map['scopes']),
      userPoolId: pulumi.Input.asInput<String>(map['userPoolId']),
    );
  }
}
