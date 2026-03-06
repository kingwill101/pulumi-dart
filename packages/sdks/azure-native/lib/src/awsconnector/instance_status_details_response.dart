// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_name_enum_value_response.dart';
import 'status_type_enum_value_response.dart';

/// Definition of InstanceStatusDetails
class InstanceStatusDetailsResponse {
  /// &lt;p&gt;The time when a status check failed. For an instance that was launched and impaired, this is the time when the instance was launched.&lt;/p&gt;
  final pulumi.Input<String>? impairedSince;
  /// &lt;p&gt;The type of instance status.&lt;/p&gt;
  final pulumi.Input<StatusNameEnumValueResponse>? name;
  /// &lt;p&gt;The status.&lt;/p&gt;
  final pulumi.Input<StatusTypeEnumValueResponse>? status;

  /// Creates a new [InstanceStatusDetailsResponse].
  /// [impairedSince] &lt;p&gt;The time when a status check failed. For an instance that was launched and impaired, this is the time when the instance was launched.&lt;/p&gt;
  /// [name] &lt;p&gt;The type of instance status.&lt;/p&gt;
  /// [status] &lt;p&gt;The status.&lt;/p&gt;
  const InstanceStatusDetailsResponse({
    this.impairedSince,
    this.name,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'impairedSince': ?impairedSince,
      'name': ?pulumi.Input.mapOptionalInputValue<StatusNameEnumValueResponse, Map<String, dynamic>>(name, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<StatusTypeEnumValueResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory InstanceStatusDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InstanceStatusDetailsResponse(
      impairedSince: (() { final guardedValue = map['impairedSince']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StatusNameEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StatusTypeEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

