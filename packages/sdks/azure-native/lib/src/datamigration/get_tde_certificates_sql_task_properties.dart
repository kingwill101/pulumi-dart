// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tde_certificates_sql_task_input.dart';

/// Properties for the task that gets TDE certificates in Base64 encoded format.
class GetTdeCertificatesSqlTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final pulumi.Input<Map<String, String>?>? clientData;
  /// Task input
  final pulumi.Input<GetTdeCertificatesSqlTaskInput?>? input;
  /// Task type.
  /// Expected value is 'GetTDECertificates.Sql'.
  final pulumi.Input<String> taskType;

  /// Creates a new [GetTdeCertificatesSqlTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Task input
  /// [taskType] Task type.
  const GetTdeCertificatesSqlTaskProperties({
    this.clientData,
    this.input,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData': ?clientData,
      'input': ?pulumi.Input.mapOptionalInputValue<GetTdeCertificatesSqlTaskInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'taskType': taskType,
    };
  }

  factory GetTdeCertificatesSqlTaskProperties.fromMap(Map<String, dynamic> map) {
    return GetTdeCertificatesSqlTaskProperties(
      clientData: (() { final guardedValue = map['clientData']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetTdeCertificatesSqlTaskInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
    );
  }
}
