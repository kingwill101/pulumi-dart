// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../network_insights_analysis_return_path_component_additional_detail_component/network_insights_analysis_return_path_component_additional_detail_component.dart';

class NetworkInsightsAnalysisReturnPathComponentAdditionalDetail {
  final String? additionalDetailType;
  final List<
          NetworkInsightsAnalysisReturnPathComponentAdditionalDetailComponent>?
      components;

  NetworkInsightsAnalysisReturnPathComponentAdditionalDetail({
    this.additionalDetailType,
    this.components,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalDetailTypeValue = additionalDetailType;
    if (additionalDetailTypeValue != null) {
      map['additionalDetailType'] = additionalDetailTypeValue;
    }
    final componentsValue = components;
    if (componentsValue != null) {
      map['components'] = pulumi.Input.encodeList<
          NetworkInsightsAnalysisReturnPathComponentAdditionalDetailComponent,
          Map<String, dynamic>>(componentsValue, (value) => value.toMap());
    }
    return map;
  }

  factory NetworkInsightsAnalysisReturnPathComponentAdditionalDetail.fromMap(
      Map<String, dynamic> map) {
    return NetworkInsightsAnalysisReturnPathComponentAdditionalDetail(
      additionalDetailType: map['additionalDetailType'] == null
          ? null
          : map['additionalDetailType'] as String,
      components: map['components'] == null
          ? null
          : pulumi.Input.decodeList<
                  NetworkInsightsAnalysisReturnPathComponentAdditionalDetailComponent>(
              map['components'],
              (value) =>
                  NetworkInsightsAnalysisReturnPathComponentAdditionalDetailComponent
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
