// ignore_for_file: unused_element, unnecessary_cast


class StorageQueueMessage {
  /// Gets or sets the message.
  final String? message;
  /// Gets or sets the queue name.
  final String? queueName;
  /// Gets or sets the SAS key.
  final String? sasToken;
  /// Gets or sets the storage account name.
  final String? storageAccount;

  /// Creates a new [StorageQueueMessage].
  /// [message] Gets or sets the message.
  /// [queueName] Gets or sets the queue name.
  /// [sasToken] Gets or sets the SAS key.
  /// [storageAccount] Gets or sets the storage account name.
  StorageQueueMessage({
    this.message,
    this.queueName,
    this.sasToken,
    this.storageAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
      'queueName': ?queueName,
      'sasToken': ?sasToken,
      'storageAccount': ?storageAccount,
    };
  }

  factory StorageQueueMessage.fromMap(Map<String, dynamic> map) {
    return StorageQueueMessage(
      message: map['message'] == null ? null : map['message'] as String,
      queueName: map['queueName'] == null ? null : map['queueName'] as String,
      sasToken: map['sasToken'] == null ? null : map['sasToken'] as String,
      storageAccount: map['storageAccount'] == null ? null : map['storageAccount'] as String,
    );
  }
}

