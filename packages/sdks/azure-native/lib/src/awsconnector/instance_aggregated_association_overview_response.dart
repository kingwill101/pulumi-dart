// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceAggregatedAssociationOverview
class InstanceAggregatedAssociationOverviewResponse {
  /// &lt;p&gt;Detailed status information about the aggregated associations.&lt;/p&gt;
  final pulumi.Input<String>? detailedStatus;

  /// &lt;p&gt;The number of associations for the managed nodes.&lt;/p&gt;
  final pulumi.Input<Map<String, int>>?
  instanceAssociationStatusAggregatedCount;

  /// Creates a new [InstanceAggregatedAssociationOverviewResponse].
  /// [detailedStatus] &lt;p&gt;Detailed status information about the aggregated associations.&lt;/p&gt;
  /// [instanceAssociationStatusAggregatedCount] &lt;p&gt;The number of associations for the managed nodes.&lt;/p&gt;
  InstanceAggregatedAssociationOverviewResponse({
    this.detailedStatus,
    this.instanceAssociationStatusAggregatedCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detailedStatus': ?detailedStatus,
      'instanceAssociationStatusAggregatedCount':
          ?instanceAssociationStatusAggregatedCount,
    };
  }

  factory InstanceAggregatedAssociationOverviewResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceAggregatedAssociationOverviewResponse(
      detailedStatus: (() {
        final guardedValue = map['detailedStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceAssociationStatusAggregatedCount: (() {
        final guardedValue = map['instanceAssociationStatusAggregatedCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, int>(),
        );
      })(),
    );
  }
}
