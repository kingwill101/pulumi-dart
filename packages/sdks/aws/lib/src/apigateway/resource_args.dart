// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_resource_resource_args_doc}
/// The set of arguments for Resource.
/// {@endtemplate}
/// {@macro pulumi_apigateway_resource_resource_args_doc}
class ResourceArgs {
  /// ID of the parent API resource
  final pulumi.Input<String> parentId;
  /// Last path segment of this API resource.
  final pulumi.Input<String> pathPart;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the associated REST API
  final pulumi.Input<String> restApi;

  /// Creates a new [ResourceArgs].
  /// [parentId] ID of the parent API resource
  /// [pathPart] Last path segment of this API resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restApi] ID of the associated REST API
  ResourceArgs({
    required this.parentId,
    required this.pathPart,
    this.region,
    required this.restApi,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parentId': parentId,
      'pathPart': pathPart,
      'region': ?region,
      'restApi': restApi,
    };
  }

  factory ResourceArgs.fromMap(Map<String, dynamic> map) {
    return ResourceArgs(
      parentId: pulumi.Input.fromValue(map['parentId'] as String),
      pathPart: pulumi.Input.fromValue(map['pathPart'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restApi: pulumi.Input.fromValue(map['restApi'] as String),
    );
  }
}

