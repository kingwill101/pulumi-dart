// ignore_for_file: unused_element, unnecessary_cast


class QuotaSubQuotaInfoListParameter {
  /// Enable priority. Valid values: true/false, default: false
  final bool? enablePriority;
  /// Exclusive or not. Valid values: true/false, default: false
  final bool? forceReservedMin;
  /// The value of maxCU in Reserved CUs.
  ///
  /// > **NOTE:**  The value of maxCU must be less than or equal to the value of maxCU in the level-1 quota that you purchased.
  final int maxCu;
  /// The value of minCU in Reserved CUs.
  ///
  /// > **NOTE:**  -- The total value of minCU in all the level-2 quotas is equal to the value of minCU in the level-1 quota.    -- The value of minCU must be less than or equal to the value of maxCU in the level-2 quota and less than or equal to the value of minCU in the level-1 quota that you purchased.
  final int minCu;
  /// Scheduling policy. Valid values: Fifo/Fair, default: Fifo
  final String? schedulerType;
  /// Single job CU upper limit. Valid value: greater than or equal to 1
  ///
  /// > **NOTE:** -- If you want to not restrict SingleJobCuLimit, please make sure that this parameter is not included in the configuration at all. That is, do not configure SingleJobCuLimit to "null" or any other invalid value
  final int? singleJobCuLimit;

  /// Creates a new [QuotaSubQuotaInfoListParameter].
  /// [enablePriority] Enable priority. Valid values: true/false, default: false
  /// [forceReservedMin] Exclusive or not. Valid values: true/false, default: false
  /// [maxCu] The value of maxCU in Reserved CUs.
  /// [minCu] The value of minCU in Reserved CUs.
  /// [schedulerType] Scheduling policy. Valid values: Fifo/Fair, default: Fifo
  /// [singleJobCuLimit] Single job CU upper limit. Valid value: greater than or equal to 1
  QuotaSubQuotaInfoListParameter({
    this.enablePriority,
    this.forceReservedMin,
    required this.maxCu,
    required this.minCu,
    this.schedulerType,
    this.singleJobCuLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePriority': ?enablePriority,
      'forceReservedMin': ?forceReservedMin,
      'maxCu': maxCu,
      'minCu': minCu,
      'schedulerType': ?schedulerType,
      'singleJobCuLimit': ?singleJobCuLimit,
    };
  }

  factory QuotaSubQuotaInfoListParameter.fromMap(Map<String, dynamic> map) {
    return QuotaSubQuotaInfoListParameter(
      enablePriority: map['enablePriority'] == null ? null : map['enablePriority'] as bool,
      forceReservedMin: map['forceReservedMin'] == null ? null : map['forceReservedMin'] as bool,
      maxCu: map['maxCu'] as int,
      minCu: map['minCu'] as int,
      schedulerType: map['schedulerType'] == null ? null : map['schedulerType'] as String,
      singleJobCuLimit: map['singleJobCuLimit'] == null ? null : map['singleJobCuLimit'] as int,
    );
  }
}

