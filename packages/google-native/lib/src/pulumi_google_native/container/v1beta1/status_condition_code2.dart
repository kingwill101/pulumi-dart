/// Machine-friendly representation of the condition Deprecated. Use canonical_code instead.
enum StatusConditionCode2 {
  unknown("UNKNOWN"),
  gceStockout("GCE_STOCKOUT"),
  gkeServiceAccountDeleted("GKE_SERVICE_ACCOUNT_DELETED"),
  gceQuotaExceeded("GCE_QUOTA_EXCEEDED"),
  setByOperator("SET_BY_OPERATOR"),
  cloudKmsKeyError("CLOUD_KMS_KEY_ERROR"),
  caExpiring("CA_EXPIRING");

  const StatusConditionCode2(this.value);
  final String value;

  static StatusConditionCode2 fromValue(String value) {
    for (final item in StatusConditionCode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatusConditionCode2 value: $value');
  }
}
