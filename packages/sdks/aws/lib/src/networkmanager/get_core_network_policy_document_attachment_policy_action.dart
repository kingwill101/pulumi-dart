// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCoreNetworkPolicyDocumentAttachmentPolicyAction {
  /// The name of the network function group to attach to the attachment policy.
  final pulumi.Input<String>? addToNetworkFunctionGroup;
  /// Defines how a segment is mapped. Values can be `constant` or `tag`. `constant` statically defines the segment to associate the attachment to. `tag` uses the value of a tag to dynamically try to map to a segment.reference_policies_elements_condition_operators.html) to evaluate.
  final pulumi.Input<String>? associationMethod;
  /// Determines if this mapping should override the segment value for `require_attachment_acceptance`. You can only set this to `true`, indicating that this setting applies only to segments that have `require_attachment_acceptance` set to `false`. If the segment already has the default `require_attachment_acceptance`, you can set this to inherit segment’s acceptance value.
  final pulumi.Input<bool>? requireAcceptance;
  /// Name of the `segment` to share as defined in the `segments` section. This is used only when the `association_method` is `constant`.
  final pulumi.Input<String>? segment;
  /// Maps the attachment to the value of a known key. This is used with the `association_method` is `tag`. For example a `tag` of `stage = “test”`, will map to a segment named `test`. The value must exactly match the name of a segment. This allows you to have many segments, but use only a single rule without having to define multiple nearly identical conditions. This prevents creating many similar conditions that all use the same keys to map to segments.
  final pulumi.Input<String>? tagValueOfKey;

  /// Creates a new [GetCoreNetworkPolicyDocumentAttachmentPolicyAction].
  /// [addToNetworkFunctionGroup] The name of the network function group to attach to the attachment policy.
  /// [associationMethod] Defines how a segment is mapped. Values can be `constant` or `tag`. `constant` statically defines the segment to associate the attachment to. `tag` uses the value of a tag to dynamically try to map to a segment.reference_policies_elements_condition_operators.html) to evaluate.
  /// [requireAcceptance] Determines if this mapping should override the segment value for `require_attachment_acceptance`. You can only set this to `true`, indicating that this setting applies only to segments that have `require_attachment_acceptance` set to `false`. If the segment already has the default `require_attachment_acceptance`, you can set this to inherit segment’s acceptance value.
  /// [segment] Name of the `segment` to share as defined in the `segments` section. This is used only when the `association_method` is `constant`.
  /// [tagValueOfKey] Maps the attachment to the value of a known key. This is used with the `association_method` is `tag`. For example a `tag` of `stage = “test”`, will map to a segment named `test`. The value must exactly match the name of a segment. This allows you to have many segments, but use only a single rule without having to define multiple nearly identical conditions. This prevents creating many similar conditions that all use the same keys to map to segments.
  GetCoreNetworkPolicyDocumentAttachmentPolicyAction({
    this.addToNetworkFunctionGroup,
    this.associationMethod,
    this.requireAcceptance,
    this.segment,
    this.tagValueOfKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addToNetworkFunctionGroup': ?addToNetworkFunctionGroup,
      'associationMethod': ?associationMethod,
      'requireAcceptance': ?requireAcceptance,
      'segment': ?segment,
      'tagValueOfKey': ?tagValueOfKey,
    };
  }

  factory GetCoreNetworkPolicyDocumentAttachmentPolicyAction.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentAttachmentPolicyAction(
      addToNetworkFunctionGroup: map['addToNetworkFunctionGroup'] == null ? null : ((map['addToNetworkFunctionGroup'] as String).input()).input(),
      associationMethod: map['associationMethod'] == null ? null : ((map['associationMethod'] as String).input()).input(),
      requireAcceptance: map['requireAcceptance'] == null ? null : ((map['requireAcceptance'] as bool).input()).input(),
      segment: map['segment'] == null ? null : ((map['segment'] as String).input()).input(),
      tagValueOfKey: map['tagValueOfKey'] == null ? null : ((map['tagValueOfKey'] as String).input()).input(),
    );
  }
}

