// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_server_scope.dart';

/// Input properties used for looking up and filtering ResourceServer resources.
class ResourceServerState {
  /// An identifier for the resource server.
  final pulumi.Input<String>? identifier;
  /// A name for the resource server.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A list of all scopes configured for this resource server in the format identifier/scope_name.
  final pulumi.Input<List<String>>? scopeIdentifiers;
  /// A list of Authorization Scope.
  final pulumi.Input<List<ResourceServerScope>>? scopes;
  /// User pool the client belongs to.
  final pulumi.Input<String>? userPoolId;

  /// Creates a new [ResourceServerState].
  /// [identifier] An identifier for the resource server.
  /// [name] A name for the resource server.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scopeIdentifiers] A list of all scopes configured for this resource server in the format identifier/scope_name.
  /// [scopes] A list of Authorization Scope.
  /// [userPoolId] User pool the client belongs to.
  ResourceServerState({
    this.identifier,
    this.name,
    this.region,
    this.scopeIdentifiers,
    this.scopes,
    this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifier': ?identifier,
      'name': ?name,
      'region': ?region,
      'scopeIdentifiers': ?scopeIdentifiers,
      'scopes': ?pulumi.Input.mapOptionalInputValue<List<ResourceServerScope>, List<Map<String, dynamic>>>(scopes, (value) => pulumi.Input.encodeList<ResourceServerScope, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userPoolId': ?userPoolId,
    };
  }

  factory ResourceServerState.fromMap(Map<String, dynamic> map) {
    return ResourceServerState(
      identifier: map['identifier'] == null ? null : ((map['identifier'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      scopeIdentifiers: map['scopeIdentifiers'] == null ? null : (((map['scopeIdentifiers'] as List).cast<String>()).input()).input(),
      scopes: map['scopes'] == null ? null : ((pulumi.Input.decodeList<ResourceServerScope>(map['scopes']!, (value) => ResourceServerScope.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      userPoolId: map['userPoolId'] == null ? null : ((map['userPoolId'] as String).input()).input(),
    );
  }
}

