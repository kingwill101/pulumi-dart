// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getResource.
class GetResourceArgs {
  /// Full path of the resource.  If no path is found, an error will be returned.
  final Input<String> path;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// REST API id that owns the resource. If no REST API is found, an error will be returned.
  final Input<String> restApiId;

  GetResourceArgs({
    required this.path,
    this.region,
    required this.restApiId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['restApiId'] = restApiId;
    return map;
  }

  factory GetResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceArgs(
      path: Input.asInput<String>(map['path']),
      region: Input.asOptionalInput<String>(map['region']),
      restApiId: Input.asInput<String>(map['restApiId']),
    );
  }
}
