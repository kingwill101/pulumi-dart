// ignore_for_file: unused_element, unnecessary_cast


/// IaaS VM specific backup protection intent item.
class AzureResourceProtectionIntent {
  /// Type of backup management for the backed up item.
  final String? backupManagementType;
  /// Friendly name of the VM represented by this backup item.
  final String? friendlyName;
  /// ID of the item which is getting protected, In case of Azure Vm , it is ProtectedItemId
  final String? itemId;
  /// ID of the backup policy with which this item is backed up.
  final String? policyId;
  /// backup protectionIntent type.
  /// Expected value is 'AzureResourceItem'.
  final String protectionIntentItemType;
  /// Backup state of this backup item.
  final String? protectionState;
  /// ARM ID of the resource to be backed up.
  final String? sourceResourceId;

  /// Creates a new [AzureResourceProtectionIntent].
  /// [backupManagementType] Type of backup management for the backed up item.
  /// [friendlyName] Friendly name of the VM represented by this backup item.
  /// [itemId] ID of the item which is getting protected, In case of Azure Vm , it is ProtectedItemId
  /// [policyId] ID of the backup policy with which this item is backed up.
  /// [protectionIntentItemType] backup protectionIntent type.
  /// [protectionState] Backup state of this backup item.
  /// [sourceResourceId] ARM ID of the resource to be backed up.
  AzureResourceProtectionIntent({
    this.backupManagementType,
    this.friendlyName,
    this.itemId,
    this.policyId,
    required this.protectionIntentItemType,
    this.protectionState,
    this.sourceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupManagementType': ?backupManagementType,
      'friendlyName': ?friendlyName,
      'itemId': ?itemId,
      'policyId': ?policyId,
      'protectionIntentItemType': protectionIntentItemType,
      'protectionState': ?protectionState,
      'sourceResourceId': ?sourceResourceId,
    };
  }

  factory AzureResourceProtectionIntent.fromMap(Map<String, dynamic> map) {
    return AzureResourceProtectionIntent(
      backupManagementType: map['backupManagementType'] == null ? null : map['backupManagementType'] as String,
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      itemId: map['itemId'] == null ? null : map['itemId'] as String,
      policyId: map['policyId'] == null ? null : map['policyId'] as String,
      protectionIntentItemType: map['protectionIntentItemType'] as String,
      protectionState: map['protectionState'] == null ? null : map['protectionState'] as String,
      sourceResourceId: map['sourceResourceId'] == null ? null : map['sourceResourceId'] as String,
    );
  }
}

