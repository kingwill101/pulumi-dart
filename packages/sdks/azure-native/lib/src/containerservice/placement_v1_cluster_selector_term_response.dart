// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'meta_v1_label_selector_response.dart';
import 'placement_v1_property_selector_response.dart';

/// ClusterSelectorTerm
class PlacementV1ClusterSelectorTermResponse {
  /// LabelSelector is a label query over all the joined member clusters. Clusters matching the query are selected. If you specify both label and property selectors in the same term, the results are AND'd.
  final pulumi.Input<MetaV1LabelSelectorResponse>? labelSelector;
  /// PropertySelector is a property query over all joined member clusters. Clusters matching the query are selected. If you specify both label and property selectors in the same term, the results are AND'd. At this moment, PropertySelector can only be used with `RequiredDuringSchedulingIgnoredDuringExecution` affinity terms. This field is beta-level; it is for the property-based scheduling feature and is only functional when a property provider is enabled in the deployment.
  final pulumi.Input<PlacementV1PropertySelectorResponse>? propertySelector;

  /// Creates a new [PlacementV1ClusterSelectorTermResponse].
  /// [labelSelector] LabelSelector is a label query over all the joined member clusters. Clusters matching the query are selected. If you specify both label and property selectors in the same term, the results are AND'd.
  /// [propertySelector] PropertySelector is a property query over all joined member clusters. Clusters matching the query are selected. If you specify both label and property selectors in the same term, the results are AND'd. At this moment, PropertySelector can only be used with `RequiredDuringSchedulingIgnoredDuringExecution` affinity terms. This field is beta-level; it is for the property-based scheduling feature and is only functional when a property provider is enabled in the deployment.
  PlacementV1ClusterSelectorTermResponse({
    this.labelSelector,
    this.propertySelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelSelector': ?pulumi.Input.mapOptionalInputValue<MetaV1LabelSelectorResponse, Map<String, dynamic>>(labelSelector, (value) => value.toMap()),
      'propertySelector': ?pulumi.Input.mapOptionalInputValue<PlacementV1PropertySelectorResponse, Map<String, dynamic>>(propertySelector, (value) => value.toMap()),
    };
  }

  factory PlacementV1ClusterSelectorTermResponse.fromMap(Map<String, dynamic> map) {
    return PlacementV1ClusterSelectorTermResponse(
      labelSelector: (() { final guardedValue = map['labelSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetaV1LabelSelectorResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      propertySelector: (() { final guardedValue = map['propertySelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlacementV1PropertySelectorResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

