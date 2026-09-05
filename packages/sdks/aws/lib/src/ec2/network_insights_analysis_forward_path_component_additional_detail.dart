// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_analysis_forward_path_component_additional_detail_component.dart';

class NetworkInsightsAnalysisForwardPathComponentAdditionalDetail {
  final pulumi.Input<String?>? additionalDetailType;
  final pulumi.Input<List<NetworkInsightsAnalysisForwardPathComponentAdditionalDetailComponent>?>? components;

  /// Creates a new [NetworkInsightsAnalysisForwardPathComponentAdditionalDetail].
  /// [additionalDetailType] Optional.
  /// [components] Optional.
  const NetworkInsightsAnalysisForwardPathComponentAdditionalDetail({
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
      additionalDetailType: (() { final guardedValue = map['additionalDetailType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      components: (() { final guardedValue = map['components']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInsightsAnalysisForwardPathComponentAdditionalDetailComponent>(guardedValue, (value) => NetworkInsightsAnalysisForwardPathComponentAdditionalDetailComponent.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
