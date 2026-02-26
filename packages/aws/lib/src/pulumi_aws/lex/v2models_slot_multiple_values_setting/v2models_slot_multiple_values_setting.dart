// ignore_for_file: unused_element, unnecessary_cast

class V2modelsSlotMultipleValuesSetting {
  /// Whether a slot can return multiple values. When <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the slot may return more than one value in a response. When <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, the slot returns only a single value. Multi-value slots are only available in the `en-US` locale.
  final bool? allowMultipleValues;

  V2modelsSlotMultipleValuesSetting({
    this.allowMultipleValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowMultipleValuesValue = allowMultipleValues;
    if (allowMultipleValuesValue != null) {
      map['allowMultipleValues'] = allowMultipleValuesValue;
    }
    return map;
  }

  factory V2modelsSlotMultipleValuesSetting.fromMap(Map<String, dynamic> map) {
    return V2modelsSlotMultipleValuesSetting(
      allowMultipleValues: map['allowMultipleValues'] == null
          ? null
          : map['allowMultipleValues'] as bool,
    );
  }
}
