// ignore_for_file: unused_element, unnecessary_cast

class TransactionInfoResponse {
  /// // [Alpha] Id of the transaction.
  final String transactionId;

  TransactionInfoResponse({
    required this.transactionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['transactionId'] = transactionId;
    return map;
  }

  factory TransactionInfoResponse.fromMap(Map<String, dynamic> map) {
    return TransactionInfoResponse(
      transactionId: map['transactionId'] as String,
    );
  }
}
