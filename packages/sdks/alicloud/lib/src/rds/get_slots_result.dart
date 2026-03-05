// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_slots_slot.dart';

/// Result data returned by getSlots.
class GetSlotsResult {
  final String dbInstanceId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? outputFile;
  final String? resourceGroupId;
  /// A list of Rds Replication Slots. Each element contains the following attributes:
  final List<GetSlotsSlot> slots;

  /// Creates a new [GetSlotsResult].
  /// [dbInstanceId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [outputFile] Optional.
  /// [resourceGroupId] Optional.
  /// [slots] A list of Rds Replication Slots. Each element contains the following attributes:
  GetSlotsResult({
    required this.dbInstanceId,
    required this.id,
    this.outputFile,
    this.resourceGroupId,
    required this.slots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': dbInstanceId,
      'id': id,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'slots': pulumi.Input.encodeList<GetSlotsSlot, Map<String, dynamic>>(slots, (value) => value.toMap()),
    };
  }

  factory GetSlotsResult.fromMap(Map<String, dynamic> map) {
    return GetSlotsResult(
      dbInstanceId: map['dbInstanceId'] as String,
      id: map['id'] as String,
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      slots: pulumi.Input.decodeList<GetSlotsSlot>(map['slots']!, (value) => GetSlotsSlot.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

