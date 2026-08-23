// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigatewayv2_get_apis_get_apis_args_doc}
/// Arguments for getApis.
/// {@endtemplate}
/// {@macro pulumi_apigatewayv2_get_apis_get_apis_args_doc}
class GetApisArgs {
  /// API name.
  final pulumi.Input<String>? name;
  /// API protocol.
  final pulumi.Input<String>? protocolType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags, each pair of which must exactly match a pair on the desired APIs.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetApisArgs].
  /// [name] API name.
  /// [protocolType] API protocol.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags, each pair of which must exactly match a pair on the desired APIs.
  const GetApisArgs({
    this.name,
    this.protocolType,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'protocolType': ?protocolType,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetApisArgs.fromMap(Map<String, dynamic> map) {
    return GetApisArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocolType: (() { final guardedValue = map['protocolType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
