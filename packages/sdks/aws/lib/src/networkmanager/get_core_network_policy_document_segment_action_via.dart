// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_core_network_policy_document_segment_action_via_with_edge_override.dart';

class GetCoreNetworkPolicyDocumentSegmentActionVia {
  /// A list of strings. The network function group to use for the service insertion action.
  final pulumi.Input<List<String>>? networkFunctionGroups;

  /// Any edge overrides and the preferred edge to use.
  final pulumi.Input<
    List<GetCoreNetworkPolicyDocumentSegmentActionViaWithEdgeOverride>
  >?
  withEdgeOverrides;

  /// Creates a new [GetCoreNetworkPolicyDocumentSegmentActionVia].
  /// [networkFunctionGroups] A list of strings. The network function group to use for the service insertion action.
  /// [withEdgeOverrides] Any edge overrides and the preferred edge to use.
  GetCoreNetworkPolicyDocumentSegmentActionVia({
    this.networkFunctionGroups,
    this.withEdgeOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkFunctionGroups': ?networkFunctionGroups,
      'withEdgeOverrides':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetCoreNetworkPolicyDocumentSegmentActionViaWithEdgeOverride>,
            List<Map<String, dynamic>>
          >(
            withEdgeOverrides,
            (value) =>
                pulumi.Input.encodeList<
                  GetCoreNetworkPolicyDocumentSegmentActionViaWithEdgeOverride,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetCoreNetworkPolicyDocumentSegmentActionVia.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCoreNetworkPolicyDocumentSegmentActionVia(
      networkFunctionGroups: (() {
        final guardedValue = map['networkFunctionGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      withEdgeOverrides: (() {
        final guardedValue = map['withEdgeOverrides'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            GetCoreNetworkPolicyDocumentSegmentActionViaWithEdgeOverride
          >(
            guardedValue,
            (value) =>
                GetCoreNetworkPolicyDocumentSegmentActionViaWithEdgeOverride.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
