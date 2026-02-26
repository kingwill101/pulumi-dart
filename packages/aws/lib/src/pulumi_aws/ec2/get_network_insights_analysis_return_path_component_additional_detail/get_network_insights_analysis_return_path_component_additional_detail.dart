// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_network_insights_analysis_return_path_component_additional_detail_component/get_network_insights_analysis_return_path_component_additional_detail_component.dart';

class GetNetworkInsightsAnalysisReturnPathComponentAdditionalDetail {
  final String additionalDetailType;
  final List<
          GetNetworkInsightsAnalysisReturnPathComponentAdditionalDetailComponent>
      components;

  GetNetworkInsightsAnalysisReturnPathComponentAdditionalDetail({
    required this.additionalDetailType,
    required this.components,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalDetailType'] = additionalDetailType;
    map['components'] = Input.encodeList<
        GetNetworkInsightsAnalysisReturnPathComponentAdditionalDetailComponent,
        Map<String, dynamic>>(components, (value) => value.toMap());
    return map;
  }

  factory GetNetworkInsightsAnalysisReturnPathComponentAdditionalDetail.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisReturnPathComponentAdditionalDetail(
      additionalDetailType: map['additionalDetailType'] as String,
      components: Input.decodeList<
              GetNetworkInsightsAnalysisReturnPathComponentAdditionalDetailComponent>(
          map['components'],
          (value) =>
              GetNetworkInsightsAnalysisReturnPathComponentAdditionalDetailComponent
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
