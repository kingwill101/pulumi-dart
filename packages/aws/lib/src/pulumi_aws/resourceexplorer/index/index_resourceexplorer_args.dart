// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../index_timeouts/index_timeouts.dart';

/// The set of arguments for Index.
class IndexResourceexplorerArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<IndexTimeouts>? timeouts;

  /// The type of the index. Valid values: `AGGREGATOR`, `LOCAL`. To understand the difference between `LOCAL` and `AGGREGATOR`, see the [_AWS Resource Explorer User Guide_](https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html).
  final pulumi.Input<String> type;

  IndexResourceexplorerArgs({
    this.region,
    this.tags,
    this.timeouts,
    required this.type,
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
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<IndexTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory IndexResourceexplorerArgs.fromMap(Map<String, dynamic> map) {
    return IndexResourceexplorerArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<IndexTimeouts>(map['timeouts']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
