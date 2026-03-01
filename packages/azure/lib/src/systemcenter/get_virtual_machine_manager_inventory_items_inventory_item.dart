// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualMachineManagerInventoryItemsInventoryItem {
  /// The ID of the System Center Virtual Machine Manager Inventory Item.
  final String id;
  /// The name of the System Center Virtual Machine Manager Inventory Item.
  final String name;
  /// The UUID of the System Center Virtual Machine Manager Inventory Item that is assigned by System Center Virtual Machine Manager.
  final String uuid;

  /// Creates a new [GetVirtualMachineManagerInventoryItemsInventoryItem].
  /// [id] The ID of the System Center Virtual Machine Manager Inventory Item.
  /// [name] The name of the System Center Virtual Machine Manager Inventory Item.
  /// [uuid] The UUID of the System Center Virtual Machine Manager Inventory Item that is assigned by System Center Virtual Machine Manager.
  GetVirtualMachineManagerInventoryItemsInventoryItem({
    required this.id,
    required this.name,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'uuid': uuid,
    };
  }

  factory GetVirtualMachineManagerInventoryItemsInventoryItem.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineManagerInventoryItemsInventoryItem(
      id: map['id'] as String,
      name: map['name'] as String,
      uuid: map['uuid'] as String,
    );
  }
}

