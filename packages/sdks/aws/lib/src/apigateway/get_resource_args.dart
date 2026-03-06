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
  const GetResourceArgs({
    required this.path,
    this.region,
    required this.restApiId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'region': ?region,
      'restApiId': restApiId,
    };
  }

  factory GetResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceArgs(
      path: pulumi.Input.fromValue(map['path'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restApiId: pulumi.Input.fromValue(map['restApiId'] as String),
    );
  }
}

