// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../service_api_method/service_api_method.dart';

class ServiceApi {
  /// A list of Method objects; structure is documented below.
  final List<ServiceApiMethod>? methods;

  /// The simple name of the endpoint as described in the config.
  final String? name;

  /// `SYNTAX_PROTO2` or `SYNTAX_PROTO3`.
  final String? syntax;

  /// A version string for this api. If specified, will have the form major-version.minor-version, e.g. `1.10`.
  final String? version;

  ServiceApi({
    this.methods,
    this.name,
    this.syntax,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final methodsValue = methods;
    if (methodsValue != null) {
      map['methods'] = Input.encodeList<ServiceApiMethod, Map<String, dynamic>>(
          methodsValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final syntaxValue = syntax;
    if (syntaxValue != null) {
      map['syntax'] = syntaxValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory ServiceApi.fromMap(Map<String, dynamic> map) {
    return ServiceApi(
      methods: map['methods'] == null
          ? null
          : Input.decodeList<ServiceApiMethod>(
              map['methods'],
              (value) => ServiceApiMethod.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      syntax: map['syntax'] == null ? null : map['syntax'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
