// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_filter.dart';

/// Definition of MetricsConfiguration
class MetricsConfiguration {
  /// The access point that was used while performing operations on the object. The metrics configuration only includes objects that meet the filter's criteria.
  final pulumi.Input<String>? accessPointArn;
  /// The ID used to identify the metrics configuration. This can be any value you choose that helps you identify your metrics configuration.
  final pulumi.Input<String>? id;
  /// The prefix that an object must have to be included in the metrics results.
  final pulumi.Input<String>? prefix;
  /// Specifies a list of tag filters to use as a metrics configuration filter. The metrics configuration includes only objects that meet the filter's criteria.
  final pulumi.Input<List<TagFilter>>? tagFilters;

  /// Creates a new [MetricsConfiguration].
  /// [accessPointArn] The access point that was used while performing operations on the object. The metrics configuration only includes objects that meet the filter's criteria.
  /// [id] The ID used to identify the metrics configuration. This can be any value you choose that helps you identify your metrics configuration.
  /// [prefix] The prefix that an object must have to be included in the metrics results.
  /// [tagFilters] Specifies a list of tag filters to use as a metrics configuration filter. The metrics configuration includes only objects that meet the filter's criteria.
  MetricsConfiguration({
    this.accessPointArn,
    this.id,
    this.prefix,
    this.tagFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointArn': ?accessPointArn,
      'id': ?id,
      'prefix': ?prefix,
      'tagFilters': ?pulumi.Input.mapOptionalInputValue<List<TagFilter>, List<Map<String, dynamic>>>(tagFilters, (value) => pulumi.Input.encodeList<TagFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MetricsConfiguration.fromMap(Map<String, dynamic> map) {
    return MetricsConfiguration(
      accessPointArn: (() { final guardedValue = map['accessPointArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagFilters: (() { final guardedValue = map['tagFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagFilter>(guardedValue, (value) => TagFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

