// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_server_scope.dart';

/// {@template pulumi_cognito_resource_server_resource_server_args_doc}
/// The set of arguments for ResourceServer.
/// {@endtemplate}
/// {@macro pulumi_cognito_resource_server_resource_server_args_doc}
class ResourceServerArgs {
  /// An identifier for the resource server.
  final pulumi.Input<String> identifier;
  /// A name for the resource server.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A list of Authorization Scope.
  final pulumi.Input<List<ResourceServerScope>?>? scopes;
  /// User pool the client belongs to.
  final pulumi.Input<String> userPoolId;

  /// Creates a new [ResourceServerArgs].
  /// [identifier] An identifier for the resource server.
  /// [name] A name for the resource server.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scopes] A list of Authorization Scope.
  /// [userPoolId] User pool the client belongs to.
  const ResourceServerArgs({
    required this.identifier,
    this.name,
    this.region,
    this.scopes,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifier': identifier,
      'name': ?name,
      'region': ?region,
      'scopes': ?pulumi.Input.mapOptionalInputValue<List<ResourceServerScope>, List<Map<String, dynamic>>>(scopes, (value) => pulumi.Input.encodeList<ResourceServerScope, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userPoolId': userPoolId,
    };
  }

  factory ResourceServerArgs.fromMap(Map<String, dynamic> map) {
    return ResourceServerArgs(
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceServerScope>(guardedValue, (value) => ResourceServerScope.fromMap((value as Map).cast<String, dynamic>()))); })(),
      userPoolId: pulumi.Input.fromValue(map['userPoolId'] as String),
    );
  }
}
