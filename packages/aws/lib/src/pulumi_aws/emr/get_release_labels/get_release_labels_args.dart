// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_release_labels_filters/get_release_labels_filters.dart';

/// Arguments for getReleaseLabels.
class GetReleaseLabelsArgs {
  /// Filters the results of the request. Prefix specifies the prefix of release labels to return. Application specifies the application (with/without version) of release labels to return. See Filters.
  final Input<GetReleaseLabelsFilters>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetReleaseLabelsArgs({
    this.filters,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<GetReleaseLabelsFilters,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetReleaseLabelsArgs.fromMap(Map<String, dynamic> map) {
    return GetReleaseLabelsArgs(
      filters: Input.asOptionalInput<GetReleaseLabelsFilters>(map['filters']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
