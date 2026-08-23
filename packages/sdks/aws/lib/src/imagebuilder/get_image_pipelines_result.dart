// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_pipelines_filter.dart';

/// Result data returned by getImagePipelines.
class GetImagePipelinesResult {
  /// Set of ARNs of the matched Image Builder Image Pipelines.
  final List<String> arns;
  final List<GetImagePipelinesFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Set of names of the matched Image Builder Image Pipelines.
  final List<String> names;
  final String region;

  /// Creates a new [GetImagePipelinesResult].
  /// [arns] Set of ARNs of the matched Image Builder Image Pipelines.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [names] Set of names of the matched Image Builder Image Pipelines.
  /// [region] Required.
  const GetImagePipelinesResult({
    required this.arns,
    this.filters,
    required this.id,
    required this.names,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': arns,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImagePipelinesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'names': names,
      'region': region,
    };
  }

  factory GetImagePipelinesResult.fromMap(Map<String, dynamic> map) {
    return GetImagePipelinesResult(
      arns: (map['arns'] as List).cast<String>(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImagePipelinesFilter>(guardedValue, (value) => GetImagePipelinesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
