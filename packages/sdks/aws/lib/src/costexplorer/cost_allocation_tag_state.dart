// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CostAllocationTag resources.
class CostAllocationTagState {
  /// The status of a cost allocation tag. Valid values are `Active` and `Inactive`.
  final pulumi.Input<String>? status;
  /// The key for the cost allocation tag.
  final pulumi.Input<String>? tagKey;
  /// The type of cost allocation tag.
  final pulumi.Input<String>? type;

  /// Creates a new [CostAllocationTagState].
  /// [status] The status of a cost allocation tag. Valid values are `Active` and `Inactive`.
  /// [tagKey] The key for the cost allocation tag.
  /// [type] The type of cost allocation tag.
  const CostAllocationTagState({
    this.status,
    this.tagKey,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
      'tagKey': ?tagKey,
      'type': ?type,
    };
  }

  factory CostAllocationTagState.fromMap(Map<String, dynamic> map) {
    return CostAllocationTagState(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagKey: (() { final guardedValue = map['tagKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
