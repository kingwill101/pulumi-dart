// ignore_for_file: unused_element, unnecessary_cast


class GetAppSpecIngressRuleComponent {
  /// The name of the component.
  final String name;
  /// An optional flag to preserve the path that is forwarded to the backend service.
  final bool preservePathPrefix;
  final String rewrite;

  /// Creates a new [GetAppSpecIngressRuleComponent].
  /// [name] The name of the component.
  /// [preservePathPrefix] An optional flag to preserve the path that is forwarded to the backend service.
  /// [rewrite] Required.
  GetAppSpecIngressRuleComponent({
    required this.name,
    required this.preservePathPrefix,
    required this.rewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'preservePathPrefix': preservePathPrefix,
      'rewrite': rewrite,
    };
  }

  factory GetAppSpecIngressRuleComponent.fromMap(Map<String, dynamic> map) {
    return GetAppSpecIngressRuleComponent(
      name: map['name'] as String,
      preservePathPrefix: map['preservePathPrefix'] as bool,
      rewrite: map['rewrite'] as String,
    );
  }
}

