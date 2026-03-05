/// Status of the approval. Uses ApprovalStatus enum.
enum ApprovalStatus {
  approved("Approved"),
  rejected("Rejected"),
  pending("Pending"),
  deleted("Deleted"),
  expired("Expired");

  const ApprovalStatus(this.wireValue);
  final String wireValue;

  static ApprovalStatus fromValue(String value) {
    for (final item in ApprovalStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApprovalStatus value: $value');
  }
}

