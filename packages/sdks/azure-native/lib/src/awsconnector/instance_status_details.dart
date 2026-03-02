// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_name_enum_value.dart';
import 'status_type_enum_value.dart';

/// Definition of InstanceStatusDetails
class InstanceStatusDetails {
  /// <p>The time when a status check failed. For an instance that was launched and impaired, this is the time when the instance was launched.</p>
  final pulumi.Input<String>? impairedSince;
  /// <p>The type of instance status.</p>
  final pulumi.Input<StatusNameEnumValue>? name;
  /// <p>The status.</p>
  final pulumi.Input<StatusTypeEnumValue>? status;

  /// Creates a new [InstanceStatusDetails].
  /// [impairedSince] <p>The time when a status check failed. For an instance that was launched and impaired, this is the time when the instance was launched.</p>
  /// [name] <p>The type of instance status.</p>
  /// [status] <p>The status.</p>
  InstanceStatusDetails({
    this.impairedSince,
    this.name,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'impairedSince': ?impairedSince,
      'name': ?pulumi.Input.mapOptionalInputValue<StatusNameEnumValue, Map<String, dynamic>>(name, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<StatusTypeEnumValue, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory InstanceStatusDetails.fromMap(Map<String, dynamic> map) {
    return InstanceStatusDetails(
      impairedSince: map['impairedSince'] == null ? null : (map['impairedSince']! as String).input(),
      name: map['name'] == null ? null : (StatusNameEnumValue.fromMap((map['name']! as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (StatusTypeEnumValue.fromMap((map['status']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

