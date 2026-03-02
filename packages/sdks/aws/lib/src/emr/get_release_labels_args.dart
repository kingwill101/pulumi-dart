// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_release_labels_filters.dart';

/// {@template pulumi_emr_get_release_labels_get_release_labels_args_doc}
/// Arguments for getReleaseLabels.
/// {@endtemplate}
/// {@macro pulumi_emr_get_release_labels_get_release_labels_args_doc}
class GetReleaseLabelsArgs {
  /// Filters the results of the request. Prefix specifies the prefix of release labels to return. Application specifies the application (with/without version) of release labels to return. See Filters.
  final pulumi.Input<GetReleaseLabelsFilters>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetReleaseLabelsArgs].
  /// [filters] Filters the results of the request. Prefix specifies the prefix of release labels to return. Application specifies the application (with/without version) of release labels to return. See Filters.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetReleaseLabelsArgs({
    this.filters,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<GetReleaseLabelsFilters, Map<String, dynamic>>(filters, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory GetReleaseLabelsArgs.fromMap(Map<String, dynamic> map) {
    return GetReleaseLabelsArgs(
      filters: map['filters'] == null ? null : ((GetReleaseLabelsFilters.fromMap((map['filters']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

