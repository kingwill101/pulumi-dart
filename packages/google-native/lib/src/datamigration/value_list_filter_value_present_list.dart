/// Required. Indicates whether the filter matches rows with values that are present in the list or those with values not present in it.
enum ValueListFilterValuePresentList {
  valuePresentInListUnspecified("VALUE_PRESENT_IN_LIST_UNSPECIFIED"),
  valuePresentInListIfValueList("VALUE_PRESENT_IN_LIST_IF_VALUE_LIST"),
  valuePresentInListIfValueNotList("VALUE_PRESENT_IN_LIST_IF_VALUE_NOT_LIST");

  const ValueListFilterValuePresentList(this.value);
  final String value;

  static ValueListFilterValuePresentList fromValue(String value) {
    for (final item in ValueListFilterValuePresentList.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ValueListFilterValuePresentList value: $value');
  }
}

