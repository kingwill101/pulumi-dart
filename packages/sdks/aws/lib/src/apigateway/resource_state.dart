// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Resource resources.
class ResourceState {
  /// ID of the parent API resource
  final pulumi.Input<String>? parentId;
  /// Complete path for this API resource, including all parent paths.
  final pulumi.Input<String>? path;
  /// Last path segment of this API resource.
  final pulumi.Input<String>? pathPart;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the associated REST API
  final pulumi.Input<String>? restApi;

  /// Creates a new [ResourceState].
  /// [parentId] ID of the parent API resource
  /// [path] Complete path for this API resource, including all parent paths.
  /// [pathPart] Last path segment of this API resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restApi] ID of the associated REST API
  ResourceState({
    pulumi.Output<String>? parentId,
    pulumi.Output<String>? path,
    pulumi.Output<String>? pathPart,
    pulumi.Output<String>? region,
    pulumi.Output<String>? restApi,
  }) :
      parentId = pulumi.Input.asOptionalInput<String>(parentId),
      path = pulumi.Input.asOptionalInput<String>(path),
      pathPart = pulumi.Input.asOptionalInput<String>(pathPart),
      region = pulumi.Input.asOptionalInput<String>(region),
      restApi = pulumi.Input.asOptionalInput<String>(restApi);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parentId': ?parentId,
      'path': ?path,
      'pathPart': ?pathPart,
      'region': ?region,
      'restApi': ?restApi,
    };
  }

  factory ResourceState.fromMap(Map<String, dynamic> map) {
    return ResourceState(
      parentId: map['parentId'] == null ? null : pulumi.Output.create<String>(map['parentId'] as String),
      path: map['path'] == null ? null : pulumi.Output.create<String>(map['path'] as String),
      pathPart: map['pathPart'] == null ? null : pulumi.Output.create<String>(map['pathPart'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      restApi: map['restApi'] == null ? null : pulumi.Output.create<String>(map['restApi'] as String),
    );
  }
}

