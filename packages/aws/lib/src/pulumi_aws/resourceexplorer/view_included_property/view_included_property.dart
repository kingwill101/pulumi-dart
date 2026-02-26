// ignore_for_file: unused_element, unnecessary_cast

class ViewIncludedProperty {
  /// The name of the property that is included in this view. Valid values: <span pulumi-lang-nodejs="`tags`" pulumi-lang-dotnet="`Tags`" pulumi-lang-go="`tags`" pulumi-lang-python="`tags`" pulumi-lang-yaml="`tags`" pulumi-lang-java="`tags`">`tags`</span>.
  final String name;

  ViewIncludedProperty({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory ViewIncludedProperty.fromMap(Map<String, dynamic> map) {
    return ViewIncludedProperty(
      name: map['name'] as String,
    );
  }
}
