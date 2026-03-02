// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceAggregatedAssociationOverview
class InstanceAggregatedAssociationOverviewResponse {
  /// <p>Detailed status information about the aggregated associations.</p>
  final pulumi.Input<String>? detailedStatus;
  /// <p>The number of associations for the managed nodes.</p>
  final pulumi.Input<Map<String, int>>? instanceAssociationStatusAggregatedCount;

  /// Creates a new [InstanceAggregatedAssociationOverviewResponse].
  /// [detailedStatus] <p>Detailed status information about the aggregated associations.</p>
  /// [instanceAssociationStatusAggregatedCount] <p>The number of associations for the managed nodes.</p>
  InstanceAggregatedAssociationOverviewResponse({
    this.detailedStatus,
    this.instanceAssociationStatusAggregatedCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detailedStatus': ?detailedStatus,
      'instanceAssociationStatusAggregatedCount': ?instanceAssociationStatusAggregatedCount,
    };
  }

  factory InstanceAggregatedAssociationOverviewResponse.fromMap(Map<String, dynamic> map) {
    return InstanceAggregatedAssociationOverviewResponse(
      detailedStatus: map['detailedStatus'] == null ? null : (map['detailedStatus']! as String).input(),
      instanceAssociationStatusAggregatedCount: map['instanceAssociationStatusAggregatedCount'] == null ? null : ((map['instanceAssociationStatusAggregatedCount']! as Map).cast<String, int>()).input(),
    );
  }
}

