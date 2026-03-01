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
  /// Map of tags, each pair of which must exactly match
  /// a pair on the desired APIs.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetApisArgs].
  /// [name] API name.
  /// [protocolType] API protocol.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags, each pair of which must exactly match
  GetApisArgs({
    pulumi.Output<String>? name,
    pulumi.Output<String>? protocolType,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      protocolType = pulumi.Input.asOptionalInput<String>(protocolType),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      protocolType: map['protocolType'] == null ? null : pulumi.Output.create<String>(map['protocolType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

