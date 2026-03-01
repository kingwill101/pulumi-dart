// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_location_get_tracker_get_tracker_args_doc}
/// Arguments for getTracker.
/// {@endtemplate}
/// {@macro pulumi_location_get_tracker_get_tracker_args_doc}
class GetTrackerArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags for the tracker.
  final pulumi.Input<Map<String, String>>? tags;
  /// Name of the tracker resource.
  final pulumi.Input<String> trackerName;

  /// Creates a new [GetTrackerArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags for the tracker.
  /// [trackerName] Name of the tracker resource.
  GetTrackerArgs({
    String? region,
    Map<String, String>? tags,
    required String trackerName,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      trackerName = pulumi.Input.asInput<String>(trackerName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'tags': ?tags,
      'trackerName': trackerName,
    };
  }

  factory GetTrackerArgs.fromMap(Map<String, dynamic> map) {
    return GetTrackerArgs(
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      trackerName: map['trackerName'] as String,
    );
  }
}

