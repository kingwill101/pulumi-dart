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
    pulumi.Output<String>? identifier,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? scopeIdentifiers,
    pulumi.Output<List<ResourceServerScope>>? scopes,
    pulumi.Output<String>? userPoolId,
  }) :
      identifier = pulumi.Input.asOptionalInput<String>(identifier),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      scopeIdentifiers = pulumi.Input.asOptionalInput<List<String>>(scopeIdentifiers),
      scopes = pulumi.Input.asOptionalInput<List<ResourceServerScope>>(scopes),
      userPoolId = pulumi.Input.asOptionalInput<String>(userPoolId);

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
      identifier: map['identifier'] == null ? null : pulumi.Output.create<String>(map['identifier'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      scopeIdentifiers: map['scopeIdentifiers'] == null ? null : pulumi.Output.create<List<String>>((map['scopeIdentifiers'] as List).cast<String>()),
      scopes: map['scopes'] == null ? null : pulumi.Output.create<List<ResourceServerScope>>(pulumi.Input.decodeList<ResourceServerScope>(map['scopes'], (value) => ResourceServerScope.fromMap((value as Map).cast<String, dynamic>()))),
      userPoolId: map['userPoolId'] == null ? null : pulumi.Output.create<String>(map['userPoolId'] as String),
    );
  }
}

