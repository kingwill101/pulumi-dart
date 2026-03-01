// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_get_resource_get_resource_args_doc}
/// Arguments for getResource.
/// {@endtemplate}
/// {@macro pulumi_apigateway_get_resource_get_resource_args_doc}
class GetResourceArgs {
  /// Full path of the resource.  If no path is found, an error will be returned.
  final pulumi.Input<String> path;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// REST API id that owns the resource. If no REST API is found, an error will be returned.
  final pulumi.Input<String> restApiId;

  /// Creates a new [GetResourceArgs].
  /// [path] Full path of the resource.  If no path is found, an error will be returned.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restApiId] REST API id that owns the resource. If no REST API is found, an error will be returned.
  GetResourceArgs({
    required String path,
    String? region,
    required String restApiId,
  }) : path = pulumi.Input.asInput<String>(path),
       region = pulumi.Input.asOptionalInput<String>(region),
       restApiId = pulumi.Input.asInput<String>(restApiId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'region': ?region,
      'restApiId': restApiId,
    };
  }

  factory GetResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceArgs(
      path: map['path'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      restApiId: map['restApiId'] as String,
    );
  }
}
