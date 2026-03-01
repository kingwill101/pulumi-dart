// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_pipelines_filter.dart';

/// {@template pulumi_imagebuilder_get_image_pipelines_get_image_pipelines_args_doc}
/// Arguments for getImagePipelines.
/// {@endtemplate}
/// {@macro pulumi_imagebuilder_get_image_pipelines_get_image_pipelines_args_doc}
class GetImagePipelinesArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final pulumi.Input<List<GetImagePipelinesFilter>>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetImagePipelinesArgs].
  /// [filters] Configuration block(s) for filtering. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetImagePipelinesArgs({
    List<GetImagePipelinesFilter>? filters,
    String? region,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetImagePipelinesFilter>>(filters),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetImagePipelinesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetImagePipelinesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory GetImagePipelinesArgs.fromMap(Map<String, dynamic> map) {
    return GetImagePipelinesArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetImagePipelinesFilter>(map['filters'], (value) => GetImagePipelinesFilter.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

