// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTracker.
class GetTrackerArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags for the tracker.
  final pulumi.Input<Map<String, String>>? tags;

  /// Name of the tracker resource.
  final pulumi.Input<String> trackerName;

  GetTrackerArgs({
    this.region,
    this.tags,
    required this.trackerName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['trackerName'] = trackerName;
    return map;
  }

  factory GetTrackerArgs.fromMap(Map<String, dynamic> map) {
    return GetTrackerArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      trackerName: pulumi.Input.asInput<String>(map['trackerName']),
    );
  }
}
