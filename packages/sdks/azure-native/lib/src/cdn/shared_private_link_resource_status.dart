/// Status of the shared private link resource. Can be Pending, Approved, Rejected, Disconnected, or Timeout.
enum SharedPrivateLinkResourceStatus {
  valuePending("Pending"),
  valueApproved("Approved"),
  valueRejected("Rejected"),
  valueDisconnected("Disconnected"),
  valueTimeout("Timeout");

  const SharedPrivateLinkResourceStatus(this.wireValue);
  final String wireValue;

  static SharedPrivateLinkResourceStatus fromValue(String value) {
    for (final item in SharedPrivateLinkResourceStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SharedPrivateLinkResourceStatus value: $value');
  }
}
