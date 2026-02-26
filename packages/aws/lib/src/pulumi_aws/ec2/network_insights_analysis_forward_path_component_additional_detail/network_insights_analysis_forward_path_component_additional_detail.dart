// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../network_insights_analysis_forward_path_component_additional_detail_component/network_insights_analysis_forward_path_component_additional_detail_component.dart';

class NetworkInsightsAnalysisForwardPathComponentAdditionalDetail {
  final String? additionalDetailType;
  final List<
          NetworkInsightsAnalysisForwardPathComponentAdditionalDetailComponent>?
      components;

  NetworkInsightsAnalysisForwardPathComponentAdditionalDetail({
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
      map['components'] = Input.encodeList<
          NetworkInsightsAnalysisForwardPathComponentAdditionalDetailComponent,
          Map<String, dynamic>>(componentsValue, (value) => value.toMap());
    }
    return map;
  }

  factory NetworkInsightsAnalysisForwardPathComponentAdditionalDetail.fromMap(
      Map<String, dynamic> map) {
    return NetworkInsightsAnalysisForwardPathComponentAdditionalDetail(
      additionalDetailType: map['additionalDetailType'] == null
          ? null
          : map['additionalDetailType'] as String,
      components: map['components'] == null
          ? null
          : Input.decodeList<
                  NetworkInsightsAnalysisForwardPathComponentAdditionalDetailComponent>(
              map['components'],
              (value) =>
                  NetworkInsightsAnalysisForwardPathComponentAdditionalDetailComponent
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
