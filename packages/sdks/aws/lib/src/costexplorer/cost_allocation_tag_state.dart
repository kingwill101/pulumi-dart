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
  CostAllocationTagState({
    pulumi.Output<String>? status,
    pulumi.Output<String>? tagKey,
    pulumi.Output<String>? type,
  }) :
      status = pulumi.Input.asOptionalInput<String>(status),
      tagKey = pulumi.Input.asOptionalInput<String>(tagKey),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
      'tagKey': ?tagKey,
      'type': ?type,
    };
  }

  factory CostAllocationTagState.fromMap(Map<String, dynamic> map) {
    return CostAllocationTagState(
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tagKey: map['tagKey'] == null ? null : pulumi.Output.create<String>(map['tagKey'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

