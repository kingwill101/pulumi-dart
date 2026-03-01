// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_routers_router.dart';

/// Result data returned by getRouters.
class GetRoutersResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String project;
  final String region;
  final List<GetRoutersRouter> routers;

  /// Creates a new [GetRoutersResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [project] Required.
  /// [region] Required.
  /// [routers] Required.
  GetRoutersResult({
    required this.id,
    required this.project,
    required this.region,
    required this.routers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'project': project,
      'region': region,
      'routers':
          pulumi.Input.encodeList<GetRoutersRouter, Map<String, dynamic>>(
            routers,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetRoutersResult.fromMap(Map<String, dynamic> map) {
    return GetRoutersResult(
      id: map['id'] as String,
      project: map['project'] as String,
      region: map['region'] as String,
      routers: pulumi.Input.decodeList<GetRoutersRouter>(
        map['routers'],
        (value) =>
            GetRoutersRouter.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
