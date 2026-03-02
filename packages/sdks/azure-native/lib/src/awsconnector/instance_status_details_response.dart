// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_name_enum_value_response.dart';
import 'status_type_enum_value_response.dart';

/// Definition of InstanceStatusDetails
class InstanceStatusDetailsResponse {
  /// <p>The time when a status check failed. For an instance that was launched and impaired, this is the time when the instance was launched.</p>
  final pulumi.Input<String>? impairedSince;
  /// <p>The type of instance status.</p>
  final pulumi.Input<StatusNameEnumValueResponse>? name;
  /// <p>The status.</p>
  final pulumi.Input<StatusTypeEnumValueResponse>? status;

  /// Creates a new [InstanceStatusDetailsResponse].
  /// [impairedSince] <p>The time when a status check failed. For an instance that was launched and impaired, this is the time when the instance was launched.</p>
  /// [name] <p>The type of instance status.</p>
  /// [status] <p>The status.</p>
  InstanceStatusDetailsResponse({
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
      impairedSince: map['impairedSince'] == null ? null : (map['impairedSince']! as String).input(),
      name: map['name'] == null ? null : (StatusNameEnumValueResponse.fromMap((map['name']! as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (StatusTypeEnumValueResponse.fromMap((map['status']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

