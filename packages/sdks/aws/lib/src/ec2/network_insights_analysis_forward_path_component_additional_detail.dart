// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_analysis_forward_path_component_additional_detail_component.dart';

class NetworkInsightsAnalysisForwardPathComponentAdditionalDetail {
  final pulumi.Input<String>? additionalDetailType;
  final pulumi.Input<List<NetworkInsightsAnalysisForwardPathComponentAdditionalDetailComponent>>? components;

  /// Creates a new [NetworkInsightsAnalysisForwardPathComponentAdditionalDetail].
  /// [additionalDetailType] Optional.
  /// [components] Optional.
  NetworkInsightsAnalysisForwardPathComponentAdditionalDetail({
    this.additionalDetailType,
    this.components,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalDetailType': ?additionalDetailType,
      'components': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisForwardPathComponentAdditionalDetailComponent>, List<Map<String, dynamic>>>(components, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisForwardPathComponentAdditionalDetailComponent, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkInsightsAnalysisForwardPathComponentAdditionalDetail.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisForwardPathComponentAdditionalDetail(
      additionalDetailType: map['additionalDetailType'] == null ? null : ((map['additionalDetailType'] as String).input()).input(),
      components: map['components'] == null ? null : ((pulumi.Input.decodeList<NetworkInsightsAnalysisForwardPathComponentAdditionalDetailComponent>(map['components']!, (value) => NetworkInsightsAnalysisForwardPathComponentAdditionalDetailComponent.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

