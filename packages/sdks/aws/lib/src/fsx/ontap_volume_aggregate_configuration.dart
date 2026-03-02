// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OntapVolumeAggregateConfiguration {
  /// Used to specify the names of the aggregates on which the volume will be created. Each aggregate needs to be in the format aggrX where X is the number of the aggregate.
  final pulumi.Input<List<String>>? aggregates;
  /// Used to explicitly set the number of constituents within the FlexGroup per storage aggregate. the default value is `8`.
  final pulumi.Input<int>? constituentsPerAggregate;
  /// The total amount of constituents for a `FLEXGROUP` volume. This would equal constituents_per_aggregate x aggregates.
  final pulumi.Input<int>? totalConstituents;

  /// Creates a new [OntapVolumeAggregateConfiguration].
  /// [aggregates] Used to specify the names of the aggregates on which the volume will be created. Each aggregate needs to be in the format aggrX where X is the number of the aggregate.
  /// [constituentsPerAggregate] Used to explicitly set the number of constituents within the FlexGroup per storage aggregate. the default value is `8`.
  /// [totalConstituents] The total amount of constituents for a `FLEXGROUP` volume. This would equal constituents_per_aggregate x aggregates.
  OntapVolumeAggregateConfiguration({
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
      aggregates: map['aggregates'] == null ? null : (((map['aggregates'] as List).cast<String>()).input()).input(),
      constituentsPerAggregate: map['constituentsPerAggregate'] == null ? null : ((map['constituentsPerAggregate'] as int).input()).input(),
      totalConstituents: map['totalConstituents'] == null ? null : ((map['totalConstituents'] as int).input()).input(),
    );
  }
}

