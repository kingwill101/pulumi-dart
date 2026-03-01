// ignore_for_file: unused_element, unnecessary_cast


class SystemTopicEventSubscriptionStorageBlobDeadLetterDestination {
  /// Specifies the id of the storage account id where the storage blob is located.
  final String storageAccountId;
  /// Specifies the name of the Storage blob container that is the destination of the deadletter events.
  final String storageBlobContainerName;

  /// Creates a new [SystemTopicEventSubscriptionStorageBlobDeadLetterDestination].
  /// [storageAccountId] Specifies the id of the storage account id where the storage blob is located.
  /// [storageBlobContainerName] Specifies the name of the Storage blob container that is the destination of the deadletter events.
  SystemTopicEventSubscriptionStorageBlobDeadLetterDestination({
    required this.storageAccountId,
    required this.storageBlobContainerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageAccountId': storageAccountId,
      'storageBlobContainerName': storageBlobContainerName,
    };
  }

  factory SystemTopicEventSubscriptionStorageBlobDeadLetterDestination.fromMap(Map<String, dynamic> map) {
    return SystemTopicEventSubscriptionStorageBlobDeadLetterDestination(
      storageAccountId: map['storageAccountId'] as String,
      storageBlobContainerName: map['storageBlobContainerName'] as String,
    );
  }
}

