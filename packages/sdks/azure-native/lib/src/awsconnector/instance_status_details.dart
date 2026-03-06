// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_name_enum_value.dart';
import 'status_type_enum_value.dart';

/// Definition of InstanceStatusDetails
class InstanceStatusDetails {
  /// &lt;p&gt;The time when a status check failed. For an instance that was launched and impaired, this is the time when the instance was launched.&lt;/p&gt;
  final pulumi.Input<String>? impairedSince;
  /// &lt;p&gt;The type of instance status.&lt;/p&gt;
  final pulumi.Input<StatusNameEnumValue>? name;
  /// &lt;p&gt;The status.&lt;/p&gt;
  final pulumi.Input<StatusTypeEnumValue>? status;

  /// Creates a new [InstanceStatusDetails].
  /// [impairedSince] &lt;p&gt;The time when a status check failed. For an instance that was launched and impaired, this is the time when the instance was launched.&lt;/p&gt;
  /// [name] &lt;p&gt;The type of instance status.&lt;/p&gt;
  /// [status] &lt;p&gt;The status.&lt;/p&gt;
  const InstanceStatusDetails({
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
      impairedSince: (() { final guardedValue = map['impairedSince']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StatusNameEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StatusTypeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

