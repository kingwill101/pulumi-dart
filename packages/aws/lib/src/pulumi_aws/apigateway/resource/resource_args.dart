// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Resource.
class ResourceArgs {
  /// ID of the parent API resource
  final Input<String> parentId;

  /// Last path segment of this API resource.
  final Input<String> pathPart;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID of the associated REST API
  final Input<String> restApi;

  ResourceArgs({
    required this.parentId,
    required this.pathPart,
    this.region,
    required this.restApi,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parentId'] = parentId;
    map['pathPart'] = pathPart;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['restApi'] = restApi;
    return map;
  }

  factory ResourceArgs.fromMap(Map<String, dynamic> map) {
    return ResourceArgs(
      parentId: Input.asInput<String>(map['parentId']),
      pathPart: Input.asInput<String>(map['pathPart']),
      region: Input.asOptionalInput<String>(map['region']),
      restApi: Input.asInput<String>(map['restApi']),
    );
  }
}
