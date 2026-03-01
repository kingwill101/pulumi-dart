// ignore_for_file: unused_element, unnecessary_cast

import 'get_tde_certificates_sql_task_input.dart';

/// Properties for the task that gets TDE certificates in Base64 encoded format.
class GetTdeCertificatesSqlTaskProperties {
  /// Key value pairs of client data to attach meta data information to task
  final Map<String, String>? clientData;
  /// Task input
  final GetTdeCertificatesSqlTaskInput? input;
  /// Task type.
  /// Expected value is 'GetTDECertificates.Sql'.
  final String taskType;

  /// Creates a new [GetTdeCertificatesSqlTaskProperties].
  /// [clientData] Key value pairs of client data to attach meta data information to task
  /// [input] Task input
  /// [taskType] Task type.
  GetTdeCertificatesSqlTaskProperties({
    this.clientData,
    this.input,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientData': ?clientData,
      'input': ?input == null ? null : input!.toMap(),
      'taskType': taskType,
    };
  }

  factory GetTdeCertificatesSqlTaskProperties.fromMap(Map<String, dynamic> map) {
    return GetTdeCertificatesSqlTaskProperties(
      clientData: map['clientData'] == null ? null : (map['clientData'] as Map).cast<String, String>(),
      input: map['input'] == null ? null : GetTdeCertificatesSqlTaskInput.fromMap((map['input'] as Map).cast<String, dynamic>()),
      taskType: map['taskType'] as String,
    );
  }
}

