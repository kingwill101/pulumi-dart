// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_api_method.dart';

class ServiceApi {
  /// A list of Method objects; structure is documented below.
  final List<ServiceApiMethod>? methods;
  /// The simple name of the endpoint as described in the config.
  final String? name;
  /// `SYNTAX_PROTO2` or `SYNTAX_PROTO3`.
  final String? syntax;
  /// A version string for this api. If specified, will have the form major-version.minor-version, e.g. `1.10`.
  final String? version;

  /// Creates a new [ServiceApi].
  /// [methods] A list of Method objects; structure is documented below.
  /// [name] The simple name of the endpoint as described in the config.
  /// [syntax] `SYNTAX_PROTO2` or `SYNTAX_PROTO3`.
  /// [version] A version string for this api. If specified, will have the form major-version.minor-version, e.g. `1.10`.
  ServiceApi({
    this.methods,
    this.name,
    this.syntax,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'methods': ?methods == null ? null : pulumi.Input.encodeList<ServiceApiMethod, Map<String, dynamic>>(methods!, (value) => value.toMap()),
      'name': ?name,
      'syntax': ?syntax,
      'version': ?version,
    };
  }

  factory ServiceApi.fromMap(Map<String, dynamic> map) {
    return ServiceApi(
      methods: map['methods'] == null ? null : pulumi.Input.decodeList<ServiceApiMethod>(map['methods'], (value) => ServiceApiMethod.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      syntax: map['syntax'] == null ? null : map['syntax'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

