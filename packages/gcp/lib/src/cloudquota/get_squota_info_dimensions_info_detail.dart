// ignore_for_file: unused_element, unnecessary_cast

class GetSQuotaInfoDimensionsInfoDetail {
  /// The value currently in effect and being enforced.
  final String value;

  /// Creates a new [GetSQuotaInfoDimensionsInfoDetail].
  /// [value] The value currently in effect and being enforced.
  GetSQuotaInfoDimensionsInfoDetail({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory GetSQuotaInfoDimensionsInfoDetail.fromMap(Map<String, dynamic> map) {
    return GetSQuotaInfoDimensionsInfoDetail(
      value: map['value'] as String,
    );
  }
}
