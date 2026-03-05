// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTrafficMirrorFiltersFilter {
  /// The ID of the Traffic Mirror Filter.
  final pulumi.Input<String> id;
  /// The state of the filter. Valid values:`Creating`, `Created`, `Modifying` and `Deleting`. `Creating`: The filter is being created. `Created`: The filter is created. `Modifying`: The filter is being modified. `Deleting`: The filter is being deleted.
  final pulumi.Input<String> status;
  /// The description of the filter.
  final pulumi.Input<String> trafficMirrorFilterDescription;
  /// The ID of the filter.
  final pulumi.Input<String> trafficMirrorFilterId;
  /// The name of the filter. The name must be `2` to `128` characters in length, and can contain digits, periods (.), underscores (_), and hyphens (-). It must start with a letter and cannot start with `http://` or `https://`.
  final pulumi.Input<String> trafficMirrorFilterName;

  /// Creates a new [GetTrafficMirrorFiltersFilter].
  /// [id] The ID of the Traffic Mirror Filter.
  /// [status] The state of the filter. Valid values:`Creating`, `Created`, `Modifying` and `Deleting`. `Creating`: The filter is being created. `Created`: The filter is created. `Modifying`: The filter is being modified. `Deleting`: The filter is being deleted.
  /// [trafficMirrorFilterDescription] The description of the filter.
  /// [trafficMirrorFilterId] The ID of the filter.
  /// [trafficMirrorFilterName] The name of the filter. The name must be `2` to `128` characters in length, and can contain digits, periods (.), underscores (_), and hyphens (-). It must start with a letter and cannot start with `http://` or `https://`.
  GetTrafficMirrorFiltersFilter({
    required this.id,
    required this.status,
    required this.trafficMirrorFilterDescription,
    required this.trafficMirrorFilterId,
    required this.trafficMirrorFilterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'status': status,
      'trafficMirrorFilterDescription': trafficMirrorFilterDescription,
      'trafficMirrorFilterId': trafficMirrorFilterId,
      'trafficMirrorFilterName': trafficMirrorFilterName,
    };
  }

  factory GetTrafficMirrorFiltersFilter.fromMap(Map<String, dynamic> map) {
    return GetTrafficMirrorFiltersFilter(
      id: pulumi.Input.fromValue(map['id'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      trafficMirrorFilterDescription: pulumi.Input.fromValue(map['trafficMirrorFilterDescription'] as String),
      trafficMirrorFilterId: pulumi.Input.fromValue(map['trafficMirrorFilterId'] as String),
      trafficMirrorFilterName: pulumi.Input.fromValue(map['trafficMirrorFilterName'] as String),
    );
  }
}

