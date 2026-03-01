// ignore_for_file: unused_element, unnecessary_cast


/// Azure Workload SQL Auto Protection intent item.
class AzureWorkloadSQLAutoProtectionIntent {
  /// Type of backup management for the backed up item.
  final String? backupManagementType;
  /// ID of the item which is getting protected, In case of Azure Vm , it is ProtectedItemId
  final String? itemId;
  /// ID of the backup policy with which this item is backed up.
  final String? policyId;
  /// backup protectionIntent type.
  /// Expected value is 'AzureWorkloadSQLAutoProtectionIntent'.
  final String protectionIntentItemType;
  /// Backup state of this backup item.
  final String? protectionState;
  /// ARM ID of the resource to be backed up.
  final String? sourceResourceId;
  /// Workload item type of the item for which intent is to be set
  final String? workloadItemType;

  /// Creates a new [AzureWorkloadSQLAutoProtectionIntent].
  /// [backupManagementType] Type of backup management for the backed up item.
  /// [itemId] ID of the item which is getting protected, In case of Azure Vm , it is ProtectedItemId
  /// [policyId] ID of the backup policy with which this item is backed up.
  /// [protectionIntentItemType] backup protectionIntent type.
  /// [protectionState] Backup state of this backup item.
  /// [sourceResourceId] ARM ID of the resource to be backed up.
  /// [workloadItemType] Workload item type of the item for which intent is to be set
  AzureWorkloadSQLAutoProtectionIntent({
    this.backupManagementType,
    this.itemId,
    this.policyId,
    required this.protectionIntentItemType,
    this.protectionState,
    this.sourceResourceId,
    this.workloadItemType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupManagementType': ?backupManagementType,
      'itemId': ?itemId,
      'policyId': ?policyId,
      'protectionIntentItemType': protectionIntentItemType,
      'protectionState': ?protectionState,
      'sourceResourceId': ?sourceResourceId,
      'workloadItemType': ?workloadItemType,
    };
  }

  factory AzureWorkloadSQLAutoProtectionIntent.fromMap(Map<String, dynamic> map) {
    return AzureWorkloadSQLAutoProtectionIntent(
      backupManagementType: map['backupManagementType'] == null ? null : map['backupManagementType'] as String,
      itemId: map['itemId'] == null ? null : map['itemId'] as String,
      policyId: map['policyId'] == null ? null : map['policyId'] as String,
      protectionIntentItemType: map['protectionIntentItemType'] as String,
      protectionState: map['protectionState'] == null ? null : map['protectionState'] as String,
      sourceResourceId: map['sourceResourceId'] == null ? null : map['sourceResourceId'] as String,
      workloadItemType: map['workloadItemType'] == null ? null : map['workloadItemType'] as String,
    );
  }
}

