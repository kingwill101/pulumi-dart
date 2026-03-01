// ignore_for_file: unused_element, unnecessary_cast


class ScaleSetPacketCaptureMachineScope {
  /// A list of Virtual Machine Scale Set instance IDs which should be excluded from running Packet Capture, e.g. `["0", "2"]`. Changing this forces a new resource to be created.
  final List<String>? excludeInstanceIds;
  /// A list of Virtual Machine Scale Set instance IDs which should be included for Packet Capture, e.g. `["1", "3"]`. Changing this forces a new resource to be created.
  final List<String>? includeInstanceIds;

  /// Creates a new [ScaleSetPacketCaptureMachineScope].
  /// [excludeInstanceIds] A list of Virtual Machine Scale Set instance IDs which should be excluded from running Packet Capture, e.g. `["0", "2"]`. Changing this forces a new resource to be created.
  /// [includeInstanceIds] A list of Virtual Machine Scale Set instance IDs which should be included for Packet Capture, e.g. `["1", "3"]`. Changing this forces a new resource to be created.
  ScaleSetPacketCaptureMachineScope({
    this.excludeInstanceIds,
    this.includeInstanceIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeInstanceIds': ?excludeInstanceIds,
      'includeInstanceIds': ?includeInstanceIds,
    };
  }

  factory ScaleSetPacketCaptureMachineScope.fromMap(Map<String, dynamic> map) {
    return ScaleSetPacketCaptureMachineScope(
      excludeInstanceIds: map['excludeInstanceIds'] == null ? null : (map['excludeInstanceIds'] as List).cast<String>(),
      includeInstanceIds: map['includeInstanceIds'] == null ? null : (map['includeInstanceIds'] as List).cast<String>(),
    );
  }
}

