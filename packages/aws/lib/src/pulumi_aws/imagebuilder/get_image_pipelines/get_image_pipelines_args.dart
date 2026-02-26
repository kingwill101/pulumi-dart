// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_image_pipelines_filter/get_image_pipelines_filter.dart';

/// Arguments for getImagePipelines.
class GetImagePipelinesArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final Input<List<GetImagePipelinesFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetImagePipelinesArgs({
    this.filters,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetImagePipelinesFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              Input.encodeList<GetImagePipelinesFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetImagePipelinesArgs.fromMap(Map<String, dynamic> map) {
    return GetImagePipelinesArgs(
      filters:
          Input.asOptionalInput<List<GetImagePipelinesFilter>>(map['filters']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
