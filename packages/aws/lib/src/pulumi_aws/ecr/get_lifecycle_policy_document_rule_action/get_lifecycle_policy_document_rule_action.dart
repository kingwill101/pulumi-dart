// ignore_for_file: unused_element, unnecessary_cast

class GetLifecyclePolicyDocumentRuleAction {
  /// The storage class you want the lifecycle policy to transition the image to. <span pulumi-lang-nodejs="`archive`" pulumi-lang-dotnet="`Archive`" pulumi-lang-go="`archive`" pulumi-lang-python="`archive`" pulumi-lang-yaml="`archive`" pulumi-lang-java="`archive`">`archive`</span> is the only supported value.
  final String? targetStorageClass;

  /// Specify an action type. The supported values are <span pulumi-lang-nodejs="`expire`" pulumi-lang-dotnet="`Expire`" pulumi-lang-go="`expire`" pulumi-lang-python="`expire`" pulumi-lang-yaml="`expire`" pulumi-lang-java="`expire`">`expire`</span> (to delete images) and <span pulumi-lang-nodejs="`transition`" pulumi-lang-dotnet="`Transition`" pulumi-lang-go="`transition`" pulumi-lang-python="`transition`" pulumi-lang-yaml="`transition`" pulumi-lang-java="`transition`">`transition`</span> (to move images to archive storage).
  final String type;

  GetLifecyclePolicyDocumentRuleAction({
    this.targetStorageClass,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final targetStorageClassValue = targetStorageClass;
    if (targetStorageClassValue != null) {
      map['targetStorageClass'] = targetStorageClassValue;
    }
    map['type'] = type;
    return map;
  }

  factory GetLifecyclePolicyDocumentRuleAction.fromMap(
      Map<String, dynamic> map) {
    return GetLifecyclePolicyDocumentRuleAction(
      targetStorageClass: map['targetStorageClass'] == null
          ? null
          : map['targetStorageClass'] as String,
      type: map['type'] as String,
    );
  }
}
