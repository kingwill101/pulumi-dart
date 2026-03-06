// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'meta_v1_label_selector.dart';
import 'placement_v1_property_selector.dart';

/// ClusterSelectorTerm
class PlacementV1ClusterSelectorTerm {
  /// LabelSelector is a label query over all the joined member clusters. Clusters matching the query are selected. If you specify both label and property selectors in the same term, the results are AND'd.
  final pulumi.Input<MetaV1LabelSelector>? labelSelector;
  /// PropertySelector is a property query over all joined member clusters. Clusters matching the query are selected. If you specify both label and property selectors in the same term, the results are AND'd. At this moment, PropertySelector can only be used with `RequiredDuringSchedulingIgnoredDuringExecution` affinity terms. This field is beta-level; it is for the property-based scheduling feature and is only functional when a property provider is enabled in the deployment.
  final pulumi.Input<PlacementV1PropertySelector>? propertySelector;

  /// Creates a new [PlacementV1ClusterSelectorTerm].
  /// [labelSelector] LabelSelector is a label query over all the joined member clusters. Clusters matching the query are selected. If you specify both label and property selectors in the same term, the results are AND'd.
  /// [propertySelector] PropertySelector is a property query over all joined member clusters. Clusters matching the query are selected. If you specify both label and property selectors in the same term, the results are AND'd. At this moment, PropertySelector can only be used with `RequiredDuringSchedulingIgnoredDuringExecution` affinity terms. This field is beta-level; it is for the property-based scheduling feature and is only functional when a property provider is enabled in the deployment.
  const PlacementV1ClusterSelectorTerm({
    this.labelSelector,
    this.propertySelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelSelector': ?pulumi.Input.mapOptionalInputValue<MetaV1LabelSelector, Map<String, dynamic>>(labelSelector, (value) => value.toMap()),
      'propertySelector': ?pulumi.Input.mapOptionalInputValue<PlacementV1PropertySelector, Map<String, dynamic>>(propertySelector, (value) => value.toMap()),
    };
  }

  factory PlacementV1ClusterSelectorTerm.fromMap(Map<String, dynamic> map) {
    return PlacementV1ClusterSelectorTerm(
      labelSelector: (() { final guardedValue = map['labelSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetaV1LabelSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      propertySelector: (() { final guardedValue = map['propertySelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlacementV1PropertySelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

