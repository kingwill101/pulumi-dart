// ignore_for_file: unused_element, unnecessary_cast

class TransactionInfoResponse {
  /// // [Alpha] Id of the transaction.
  final String transactionId;

  /// Creates a new [TransactionInfoResponse].
  /// [transactionId] // [Alpha] Id of the transaction.
  TransactionInfoResponse({required this.transactionId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'transactionId': transactionId};
  }

  factory TransactionInfoResponse.fromMap(Map<String, dynamic> map) {
    return TransactionInfoResponse(
      transactionId: map['transactionId'] as String,
    );
  }
}
