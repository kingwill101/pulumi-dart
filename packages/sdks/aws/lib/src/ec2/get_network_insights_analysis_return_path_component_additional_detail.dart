// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_analysis_return_path_component_additional_detail_component.dart';

class GetNetworkInsightsAnalysisReturnPathComponentAdditionalDetail {
  final pulumi.Input<String> additionalDetailType;
  final pulumi.Input<List<GetNetworkInsightsAnalysisReturnPathComponentAdditionalDetailComponent>> components;

  /// Creates a new [GetNetworkInsightsAnalysisReturnPathComponentAdditionalDetail].
  /// [additionalDetailType] Required.
  /// [components] Required.
  GetNetworkInsightsAnalysisReturnPathComponentAdditionalDetail({
    required this.additionalDetailType,
    required this.components,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalDetailType': additionalDetailType,
      'components': pulumi.Input.mapInputValue<List<GetNetworkInsightsAnalysisReturnPathComponentAdditionalDetailComponent>, List<Map<String, dynamic>>>(components, (value) => pulumi.Input.encodeList<GetNetworkInsightsAnalysisReturnPathComponentAdditionalDetailComponent, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetNetworkInsightsAnalysisReturnPathComponentAdditionalDetail.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisReturnPathComponentAdditionalDetail(
      additionalDetailType: pulumi.Input.fromValue(map['additionalDetailType'] as String),
      components: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNetworkInsightsAnalysisReturnPathComponentAdditionalDetailComponent>(map['components']!, (value) => GetNetworkInsightsAnalysisReturnPathComponentAdditionalDetailComponent.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

