// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instances_filter/get_instances_filter.dart';

/// Arguments for getInstances.
class GetInstancesArgs {
  /// One or more filters to apply to the search.
  /// If multiple <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> blocks are provided, they all must be true.
  /// For a full reference of filter names, see [describe-instances in the AWS CLI reference][1].
  /// See <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> Block below.
  final Input<List<GetInstancesFilter>>? filters;

  /// List of instance states that should be applicable to the desired instances. The permitted values are: `pending, running, shutting-down, stopped, stopping, terminated`. The default value is <span pulumi-lang-nodejs="`running`" pulumi-lang-dotnet="`Running`" pulumi-lang-go="`running`" pulumi-lang-python="`running`" pulumi-lang-yaml="`running`" pulumi-lang-java="`running`">`running`</span>.
  final Input<List<String>>? instanceStateNames;

  /// Map of tags, each pair of which must
  /// exactly match a pair on desired instances.
  final Input<Map<String, String>>? instanceTags;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetInstancesArgs({
    this.filters,
    this.instanceStateNames,
    this.instanceTags,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<List<GetInstancesFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetInstancesFilter, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final instanceStateNamesValue = instanceStateNames;
    if (instanceStateNamesValue != null) {
      map['instanceStateNames'] = instanceStateNamesValue;
    }
    final instanceTagsValue = instanceTags;
    if (instanceTagsValue != null) {
      map['instanceTags'] = instanceTagsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs(
      filters: Input.asOptionalInput<List<GetInstancesFilter>>(map['filters']),
      instanceStateNames:
          Input.asOptionalInput<List<String>>(map['instanceStateNames']),
      instanceTags:
          Input.asOptionalInput<Map<String, String>>(map['instanceTags']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
