// ignore_for_file: unused_element, unnecessary_cast


class AppSpecIngressRuleComponent {
  /// The name of the component to route to.
  final String? name;
  /// An optional boolean flag to preserve the path that is forwarded to the backend service. By default, the HTTP request path will be trimmed from the left when forwarded to the component.
  final bool? preservePathPrefix;
  /// An optional field that will rewrite the path of the component to be what is specified here. This is mutually exclusive with `preserve_path_prefix`.
  final String? rewrite;

  /// Creates a new [AppSpecIngressRuleComponent].
  /// [name] The name of the component to route to.
  /// [preservePathPrefix] An optional boolean flag to preserve the path that is forwarded to the backend service. By default, the HTTP request path will be trimmed from the left when forwarded to the component.
  /// [rewrite] An optional field that will rewrite the path of the component to be what is specified here. This is mutually exclusive with `preserve_path_prefix`.
  AppSpecIngressRuleComponent({
    this.name,
    this.preservePathPrefix,
    this.rewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'preservePathPrefix': ?preservePathPrefix,
      'rewrite': ?rewrite,
    };
  }

  factory AppSpecIngressRuleComponent.fromMap(Map<String, dynamic> map) {
    return AppSpecIngressRuleComponent(
      name: map['name'] == null ? null : map['name'] as String,
      preservePathPrefix: map['preservePathPrefix'] == null ? null : map['preservePathPrefix'] as bool,
      rewrite: map['rewrite'] == null ? null : map['rewrite'] as String,
    );
  }
}

