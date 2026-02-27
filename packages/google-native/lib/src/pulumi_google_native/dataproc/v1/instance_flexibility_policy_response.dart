// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_selection_response.dart';
import 'instance_selection_result_response.dart';

/// Instance flexibility Policy allowing a mixture of VM shapes and provisioning models.
class InstanceFlexibilityPolicyResponse {
  /// Optional. List of instance selection options that the group will use when creating new VMs.
  final List<InstanceSelectionResponse> instanceSelectionList;

  /// A list of instance selection results in the group.
  final List<InstanceSelectionResultResponse> instanceSelectionResults;

  InstanceFlexibilityPolicyResponse({
    required this.instanceSelectionList,
    required this.instanceSelectionResults,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceSelectionList'] = pulumi.Input.encodeList<
        InstanceSelectionResponse,
        Map<String, dynamic>>(instanceSelectionList, (value) => value.toMap());
    map['instanceSelectionResults'] = pulumi.Input.encodeList<
            InstanceSelectionResultResponse, Map<String, dynamic>>(
        instanceSelectionResults, (value) => value.toMap());
    return map;
  }

  factory InstanceFlexibilityPolicyResponse.fromMap(Map<String, dynamic> map) {
    return InstanceFlexibilityPolicyResponse(
      instanceSelectionList: pulumi.Input.decodeList<InstanceSelectionResponse>(
          map['instanceSelectionList'],
          (value) => InstanceSelectionResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      instanceSelectionResults:
          pulumi.Input.decodeList<InstanceSelectionResultResponse>(
              map['instanceSelectionResults'],
              (value) => InstanceSelectionResultResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
