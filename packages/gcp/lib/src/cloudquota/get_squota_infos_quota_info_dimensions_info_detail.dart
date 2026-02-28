// ignore_for_file: unused_element, unnecessary_cast

class GetSQuotaInfosQuotaInfoDimensionsInfoDetail {
  /// The value currently in effect and being enforced.
  final String value;

  /// Creates a new [GetSQuotaInfosQuotaInfoDimensionsInfoDetail].
  /// [value] The value currently in effect and being enforced.
  GetSQuotaInfosQuotaInfoDimensionsInfoDetail({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory GetSQuotaInfosQuotaInfoDimensionsInfoDetail.fromMap(
      Map<String, dynamic> map) {
    return GetSQuotaInfosQuotaInfoDimensionsInfoDetail(
      value: map['value'] as String,
    );
  }
}
