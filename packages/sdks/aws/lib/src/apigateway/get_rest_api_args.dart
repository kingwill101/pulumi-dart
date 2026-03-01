// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_get_rest_api_get_rest_api_args_doc}
/// Arguments for getRestApi.
/// {@endtemplate}
/// {@macro pulumi_apigateway_get_rest_api_get_rest_api_args_doc}
class GetRestApiArgs {
  /// Name of the REST API to look up. If no REST API is found with this name, an error will be returned. If multiple REST APIs are found with this name, an error will be returned.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetRestApiArgs].
  /// [name] Name of the REST API to look up. If no REST API is found with this name, an error will be returned. If multiple REST APIs are found with this name, an error will be returned.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags.
  GetRestApiArgs({
    required pulumi.Output<String> name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetRestApiArgs.fromMap(Map<String, dynamic> map) {
    return GetRestApiArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

