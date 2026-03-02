// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_analysis_return_path_component_additional_detail_component.dart';

class NetworkInsightsAnalysisReturnPathComponentAdditionalDetail {
  final pulumi.Input<String>? additionalDetailType;
  final pulumi.Input<List<NetworkInsightsAnalysisReturnPathComponentAdditionalDetailComponent>>? components;

  /// Creates a new [NetworkInsightsAnalysisReturnPathComponentAdditionalDetail].
  /// [additionalDetailType] Optional.
  /// [components] Optional.
  NetworkInsightsAnalysisReturnPathComponentAdditionalDetail({
    this.additionalDetailType,
    this.components,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalDetailType': ?additionalDetailType,
      'components': ?pulumi.Input.mapOptionalInputValue<List<NetworkInsightsAnalysisReturnPathComponentAdditionalDetailComponent>, List<Map<String, dynamic>>>(components, (value) => pulumi.Input.encodeList<NetworkInsightsAnalysisReturnPathComponentAdditionalDetailComponent, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkInsightsAnalysisReturnPathComponentAdditionalDetail.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisReturnPathComponentAdditionalDetail(
      additionalDetailType: map['additionalDetailType'] == null ? null : (map['additionalDetailType'] as String).input(),
      components: map['components'] == null ? null : (pulumi.Input.decodeList<NetworkInsightsAnalysisReturnPathComponentAdditionalDetailComponent>(map['components'], (value) => NetworkInsightsAnalysisReturnPathComponentAdditionalDetailComponent.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

