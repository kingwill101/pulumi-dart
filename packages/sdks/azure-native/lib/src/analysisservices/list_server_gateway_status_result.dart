// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listServerGatewayStatus.
class ListServerGatewayStatusResult {
  /// Live message of list gateway. Status: 0 - Live
  final int? status;

  /// Creates a new [ListServerGatewayStatusResult].
  /// [status] Live message of list gateway. Status: 0 - Live
  const ListServerGatewayStatusResult({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory ListServerGatewayStatusResult.fromMap(Map<String, dynamic> map) {
    return ListServerGatewayStatusResult(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as int; })(),
    );
  }
}
