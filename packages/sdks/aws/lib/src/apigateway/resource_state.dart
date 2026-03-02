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
    this.parentId,
    this.path,
    this.pathPart,
    this.region,
    this.restApi,
  });

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
      parentId: map['parentId'] == null ? null : (map['parentId'] as String).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      pathPart: map['pathPart'] == null ? null : (map['pathPart'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      restApi: map['restApi'] == null ? null : (map['restApi'] as String).input(),
    );
  }
}

