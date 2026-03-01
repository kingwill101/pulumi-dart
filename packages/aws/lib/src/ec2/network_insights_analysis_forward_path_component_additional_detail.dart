// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_analysis_forward_path_component_additional_detail_component.dart';

class NetworkInsightsAnalysisForwardPathComponentAdditionalDetail {
  final String? additionalDetailType;
  final List<
    NetworkInsightsAnalysisForwardPathComponentAdditionalDetailComponent
  >?
  components;

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
      'components': ?components == null
          ? null
          : pulumi.Input.encodeList<
              NetworkInsightsAnalysisForwardPathComponentAdditionalDetailComponent,
              Map<String, dynamic>
            >(components!, (value) => value.toMap()),
    };
  }

  factory NetworkInsightsAnalysisForwardPathComponentAdditionalDetail.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkInsightsAnalysisForwardPathComponentAdditionalDetail(
      additionalDetailType: map['additionalDetailType'] == null
          ? null
          : map['additionalDetailType'] as String,
      components: map['components'] == null
          ? null
          : pulumi.Input.decodeList<
              NetworkInsightsAnalysisForwardPathComponentAdditionalDetailComponent
            >(
              map['components'],
              (value) =>
                  NetworkInsightsAnalysisForwardPathComponentAdditionalDetailComponent.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
