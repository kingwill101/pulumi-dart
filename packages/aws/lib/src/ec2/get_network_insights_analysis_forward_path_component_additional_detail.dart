// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_insights_analysis_forward_path_component_additional_detail_component.dart';

class GetNetworkInsightsAnalysisForwardPathComponentAdditionalDetail {
  final String additionalDetailType;
  final List<
          GetNetworkInsightsAnalysisForwardPathComponentAdditionalDetailComponent>
      components;

  /// Creates a new [GetNetworkInsightsAnalysisForwardPathComponentAdditionalDetail].
  /// [additionalDetailType] Required.
  /// [components] Required.
  GetNetworkInsightsAnalysisForwardPathComponentAdditionalDetail({
    required this.additionalDetailType,
    required this.components,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalDetailType'] = additionalDetailType;
    map['components'] = pulumi.Input.encodeList<
        GetNetworkInsightsAnalysisForwardPathComponentAdditionalDetailComponent,
        Map<String, dynamic>>(components, (value) => value.toMap());
    return map;
  }

  factory GetNetworkInsightsAnalysisForwardPathComponentAdditionalDetail.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisForwardPathComponentAdditionalDetail(
      additionalDetailType: map['additionalDetailType'] as String,
      components: pulumi.Input.decodeList<
              GetNetworkInsightsAnalysisForwardPathComponentAdditionalDetailComponent>(
          map['components'],
          (value) =>
              GetNetworkInsightsAnalysisForwardPathComponentAdditionalDetailComponent
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
