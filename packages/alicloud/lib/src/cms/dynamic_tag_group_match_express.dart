// ignore_for_file: unused_element, unnecessary_cast


class DynamicTagGroupMatchExpress {
  /// The tag values of the cloud resources.
  final String tagValue;
  /// The method that is used to match the tag values of the cloud resources. Valid values: `all`, `startWith`, `endWith`, `contains`, `notContains`, `equals`.
  final String tagValueMatchFunction;

  /// Creates a new [DynamicTagGroupMatchExpress].
  /// [tagValue] The tag values of the cloud resources.
  /// [tagValueMatchFunction] The method that is used to match the tag values of the cloud resources. Valid values: `all`, `startWith`, `endWith`, `contains`, `notContains`, `equals`.
  DynamicTagGroupMatchExpress({
    required this.tagValue,
    required this.tagValueMatchFunction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tagValue': tagValue,
      'tagValueMatchFunction': tagValueMatchFunction,
    };
  }

  factory DynamicTagGroupMatchExpress.fromMap(Map<String, dynamic> map) {
    return DynamicTagGroupMatchExpress(
      tagValue: map['tagValue'] as String,
      tagValueMatchFunction: map['tagValueMatchFunction'] as String,
    );
  }
}

