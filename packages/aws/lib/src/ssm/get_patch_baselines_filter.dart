// ignore_for_file: unused_element, unnecessary_cast


class GetPatchBaselinesFilter {
  /// Filter key. See the [AWS SSM documentation](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_DescribePatchBaselines.html) for valid values.
  final String key;
  /// Filter values. See the [AWS SSM documentation](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_DescribePatchBaselines.html) for example values.
  final List<String> values;

  /// Creates a new [GetPatchBaselinesFilter].
  /// [key] Filter key. See the [AWS SSM documentation](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_DescribePatchBaselines.html) for valid values.
  /// [values] Filter values. See the [AWS SSM documentation](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_DescribePatchBaselines.html) for example values.
  GetPatchBaselinesFilter({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory GetPatchBaselinesFilter.fromMap(Map<String, dynamic> map) {
    return GetPatchBaselinesFilter(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

