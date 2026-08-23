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
  const ResourceState({
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
      parentId: (() { final guardedValue = map['parentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pathPart: (() { final guardedValue = map['pathPart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restApi: (() { final guardedValue = map['restApi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
