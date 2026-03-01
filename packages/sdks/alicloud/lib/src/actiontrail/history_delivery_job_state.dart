// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HistoryDeliveryJob resources.
class HistoryDeliveryJobState {
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// The status of the resource
  final pulumi.Input<int>? status;
  /// The Track Name.
  final pulumi.Input<String>? trailName;

  /// Creates a new [HistoryDeliveryJobState].
  /// [createTime] The creation time of the resource
  /// [status] The status of the resource
  /// [trailName] The Track Name.
  HistoryDeliveryJobState({
    pulumi.Output<String>? createTime,
    pulumi.Output<int>? status,
    pulumi.Output<String>? trailName,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      status = pulumi.Input.asOptionalInput<int>(status),
      trailName = pulumi.Input.asOptionalInput<String>(trailName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'status': ?status,
      'trailName': ?trailName,
    };
  }

  factory HistoryDeliveryJobState.fromMap(Map<String, dynamic> map) {
    return HistoryDeliveryJobState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<int>(map['status'] as int),
      trailName: map['trailName'] == null ? null : pulumi.Output.create<String>(map['trailName'] as String),
    );
  }
}

