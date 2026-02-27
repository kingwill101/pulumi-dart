// ignore_for_file: unused_element, unnecessary_cast

class GetCoreNetworkPolicyDocumentAttachmentPolicyAction {
  /// The name of the network function group to attach to the attachment policy.
  final String? addToNetworkFunctionGroup;

  /// Defines how a segment is mapped. Values can be `constant` or `tag`. `constant` statically defines the segment to associate the attachment to. `tag` uses the value of a tag to dynamically try to map to a segment.reference_policies_elements_condition_operators.html) to evaluate.
  final String? associationMethod;

  /// Determines if this mapping should override the segment value for `require_attachment_acceptance`. You can only set this to `true`, indicating that this setting applies only to segments that have `require_attachment_acceptance` set to `false`. If the segment already has the default `require_attachment_acceptance`, you can set this to inherit segment’s acceptance value.
  final bool? requireAcceptance;

  /// Name of the `segment` to share as defined in the `segments` section. This is used only when the `association_method` is `constant`.
  final String? segment;

  /// Maps the attachment to the value of a known key. This is used with the `association_method` is `tag`. For example a `tag` of `stage = “test”`, will map to a segment named `test`. The value must exactly match the name of a segment. This allows you to have many segments, but use only a single rule without having to define multiple nearly identical conditions. This prevents creating many similar conditions that all use the same keys to map to segments.
  final String? tagValueOfKey;

  GetCoreNetworkPolicyDocumentAttachmentPolicyAction({
    this.addToNetworkFunctionGroup,
    this.associationMethod,
    this.requireAcceptance,
    this.segment,
    this.tagValueOfKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addToNetworkFunctionGroupValue = addToNetworkFunctionGroup;
    if (addToNetworkFunctionGroupValue != null) {
      map['addToNetworkFunctionGroup'] = addToNetworkFunctionGroupValue;
    }
    final associationMethodValue = associationMethod;
    if (associationMethodValue != null) {
      map['associationMethod'] = associationMethodValue;
    }
    final requireAcceptanceValue = requireAcceptance;
    if (requireAcceptanceValue != null) {
      map['requireAcceptance'] = requireAcceptanceValue;
    }
    final segmentValue = segment;
    if (segmentValue != null) {
      map['segment'] = segmentValue;
    }
    final tagValueOfKeyValue = tagValueOfKey;
    if (tagValueOfKeyValue != null) {
      map['tagValueOfKey'] = tagValueOfKeyValue;
    }
    return map;
  }

  factory GetCoreNetworkPolicyDocumentAttachmentPolicyAction.fromMap(
      Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentAttachmentPolicyAction(
      addToNetworkFunctionGroup: map['addToNetworkFunctionGroup'] == null
          ? null
          : map['addToNetworkFunctionGroup'] as String,
      associationMethod: map['associationMethod'] == null
          ? null
          : map['associationMethod'] as String,
      requireAcceptance: map['requireAcceptance'] == null
          ? null
          : map['requireAcceptance'] as bool,
      segment: map['segment'] == null ? null : map['segment'] as String,
      tagValueOfKey:
          map['tagValueOfKey'] == null ? null : map['tagValueOfKey'] as String,
    );
  }
}
