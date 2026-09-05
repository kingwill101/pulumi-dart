// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OntapVolumeAggregateConfiguration {
  /// Names of the aggregates on which the volume will be created. Each aggregate needs to be in the format aggrX where X is the number of the aggregate.
  final pulumi.Input<List<String>?>? aggregates;
  /// Number of constituents within the FlexGroup per storage aggregate. the default value is `8`.
  final pulumi.Input<int?>? constituentsPerAggregate;
  /// Total amount of constituents for a `FLEXGROUP` volume. This would equal constituentsPerAggregate x aggregates.
  final pulumi.Input<int?>? totalConstituents;

  /// Creates a new [OntapVolumeAggregateConfiguration].
  /// [aggregates] Names of the aggregates on which the volume will be created. Each aggregate needs to be in the format aggrX where X is the number of the aggregate.
  /// [constituentsPerAggregate] Number of constituents within the FlexGroup per storage aggregate. the default value is `8`.
  /// [totalConstituents] Total amount of constituents for a `FLEXGROUP` volume. This would equal constituentsPerAggregate x aggregates.
  const OntapVolumeAggregateConfiguration({
    this.aggregates,
    this.constituentsPerAggregate,
    this.totalConstituents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregates': ?aggregates,
      'constituentsPerAggregate': ?constituentsPerAggregate,
      'totalConstituents': ?totalConstituents,
    };
  }

  factory OntapVolumeAggregateConfiguration.fromMap(Map<String, dynamic> map) {
    return OntapVolumeAggregateConfiguration(
      aggregates: (() { final guardedValue = map['aggregates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      constituentsPerAggregate: (() { final guardedValue = map['constituentsPerAggregate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      totalConstituents: (() { final guardedValue = map['totalConstituents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
