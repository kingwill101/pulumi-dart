// ignore_for_file: unused_element, unnecessary_cast

class GetCoreNetworkPolicyDocumentAttachmentPolicyAction {
  /// The name of the network function group to attach to the attachment policy.
  final String? addToNetworkFunctionGroup;

  /// Defines how a segment is mapped. Values can be <span pulumi-lang-nodejs="`constant`" pulumi-lang-dotnet="`Constant`" pulumi-lang-go="`constant`" pulumi-lang-python="`constant`" pulumi-lang-yaml="`constant`" pulumi-lang-java="`constant`">`constant`</span> or <span pulumi-lang-nodejs="`tag`" pulumi-lang-dotnet="`Tag`" pulumi-lang-go="`tag`" pulumi-lang-python="`tag`" pulumi-lang-yaml="`tag`" pulumi-lang-java="`tag`">`tag`</span>. <span pulumi-lang-nodejs="`constant`" pulumi-lang-dotnet="`Constant`" pulumi-lang-go="`constant`" pulumi-lang-python="`constant`" pulumi-lang-yaml="`constant`" pulumi-lang-java="`constant`">`constant`</span> statically defines the segment to associate the attachment to. <span pulumi-lang-nodejs="`tag`" pulumi-lang-dotnet="`Tag`" pulumi-lang-go="`tag`" pulumi-lang-python="`tag`" pulumi-lang-yaml="`tag`" pulumi-lang-java="`tag`">`tag`</span> uses the value of a tag to dynamically try to map to a segment.reference_policies_elements_condition_operators.html) to evaluate.
  final String? associationMethod;

  /// Determines if this mapping should override the segment value for <span pulumi-lang-nodejs="`requireAttachmentAcceptance`" pulumi-lang-dotnet="`RequireAttachmentAcceptance`" pulumi-lang-go="`requireAttachmentAcceptance`" pulumi-lang-python="`require_attachment_acceptance`" pulumi-lang-yaml="`requireAttachmentAcceptance`" pulumi-lang-java="`requireAttachmentAcceptance`">`require_attachment_acceptance`</span>. You can only set this to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, indicating that this setting applies only to segments that have <span pulumi-lang-nodejs="`requireAttachmentAcceptance`" pulumi-lang-dotnet="`RequireAttachmentAcceptance`" pulumi-lang-go="`requireAttachmentAcceptance`" pulumi-lang-python="`require_attachment_acceptance`" pulumi-lang-yaml="`requireAttachmentAcceptance`" pulumi-lang-java="`requireAttachmentAcceptance`">`require_attachment_acceptance`</span> set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. If the segment already has the default <span pulumi-lang-nodejs="`requireAttachmentAcceptance`" pulumi-lang-dotnet="`RequireAttachmentAcceptance`" pulumi-lang-go="`requireAttachmentAcceptance`" pulumi-lang-python="`require_attachment_acceptance`" pulumi-lang-yaml="`requireAttachmentAcceptance`" pulumi-lang-java="`requireAttachmentAcceptance`">`require_attachment_acceptance`</span>, you can set this to inherit segment’s acceptance value.
  final bool? requireAcceptance;

  /// Name of the <span pulumi-lang-nodejs="`segment`" pulumi-lang-dotnet="`Segment`" pulumi-lang-go="`segment`" pulumi-lang-python="`segment`" pulumi-lang-yaml="`segment`" pulumi-lang-java="`segment`">`segment`</span> to share as defined in the <span pulumi-lang-nodejs="`segments`" pulumi-lang-dotnet="`Segments`" pulumi-lang-go="`segments`" pulumi-lang-python="`segments`" pulumi-lang-yaml="`segments`" pulumi-lang-java="`segments`">`segments`</span> section. This is used only when the <span pulumi-lang-nodejs="`associationMethod`" pulumi-lang-dotnet="`AssociationMethod`" pulumi-lang-go="`associationMethod`" pulumi-lang-python="`association_method`" pulumi-lang-yaml="`associationMethod`" pulumi-lang-java="`associationMethod`">`association_method`</span> is <span pulumi-lang-nodejs="`constant`" pulumi-lang-dotnet="`Constant`" pulumi-lang-go="`constant`" pulumi-lang-python="`constant`" pulumi-lang-yaml="`constant`" pulumi-lang-java="`constant`">`constant`</span>.
  final String? segment;

  /// Maps the attachment to the value of a known key. This is used with the <span pulumi-lang-nodejs="`associationMethod`" pulumi-lang-dotnet="`AssociationMethod`" pulumi-lang-go="`associationMethod`" pulumi-lang-python="`association_method`" pulumi-lang-yaml="`associationMethod`" pulumi-lang-java="`associationMethod`">`association_method`</span> is <span pulumi-lang-nodejs="`tag`" pulumi-lang-dotnet="`Tag`" pulumi-lang-go="`tag`" pulumi-lang-python="`tag`" pulumi-lang-yaml="`tag`" pulumi-lang-java="`tag`">`tag`</span>. For example a <span pulumi-lang-nodejs="`tag`" pulumi-lang-dotnet="`Tag`" pulumi-lang-go="`tag`" pulumi-lang-python="`tag`" pulumi-lang-yaml="`tag`" pulumi-lang-java="`tag`">`tag`</span> of `stage = “test”`, will map to a segment named <span pulumi-lang-nodejs="`test`" pulumi-lang-dotnet="`Test`" pulumi-lang-go="`test`" pulumi-lang-python="`test`" pulumi-lang-yaml="`test`" pulumi-lang-java="`test`">`test`</span>. The value must exactly match the name of a segment. This allows you to have many segments, but use only a single rule without having to define multiple nearly identical conditions. This prevents creating many similar conditions that all use the same keys to map to segments.
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
