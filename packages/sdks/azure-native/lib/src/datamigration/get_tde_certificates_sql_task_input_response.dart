// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_share_response.dart';
import 'selected_certificate_input_response.dart';
import 'sql_connection_info_response.dart';

/// Input for the task that gets TDE certificates in Base64 encoded format.
class GetTdeCertificatesSqlTaskInputResponse {
  /// Backup file share information for file share to be used for temporarily storing files.
  final pulumi.Input<FileShareResponse> backupFileShare;
  /// Connection information for SQL Server
  final pulumi.Input<SqlConnectionInfoResponse> connectionInfo;
  /// List containing certificate names and corresponding password to use for encrypting the exported certificate.
  final pulumi.Input<List<SelectedCertificateInputResponse>> selectedCertificates;

  /// Creates a new [GetTdeCertificatesSqlTaskInputResponse].
  /// [backupFileShare] Backup file share information for file share to be used for temporarily storing files.
  /// [connectionInfo] Connection information for SQL Server
  /// [selectedCertificates] List containing certificate names and corresponding password to use for encrypting the exported certificate.
  const GetTdeCertificatesSqlTaskInputResponse({
    required this.backupFileShare,
    required this.connectionInfo,
    required this.selectedCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupFileShare': pulumi.Input.mapInputValue<FileShareResponse, Map<String, dynamic>>(backupFileShare, (value) => value.toMap()),
      'connectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfoResponse, Map<String, dynamic>>(connectionInfo, (value) => value.toMap()),
      'selectedCertificates': pulumi.Input.mapInputValue<List<SelectedCertificateInputResponse>, List<Map<String, dynamic>>>(selectedCertificates, (value) => pulumi.Input.encodeList<SelectedCertificateInputResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetTdeCertificatesSqlTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return GetTdeCertificatesSqlTaskInputResponse(
      backupFileShare: pulumi.Input.fromValue(FileShareResponse.fromMap((map['backupFileShare']! as Map).cast<String, dynamic>())),
      connectionInfo: pulumi.Input.fromValue(SqlConnectionInfoResponse.fromMap((map['connectionInfo']! as Map).cast<String, dynamic>())),
      selectedCertificates: pulumi.Input.fromValue(pulumi.Input.decodeList<SelectedCertificateInputResponse>(map['selectedCertificates']!, (value) => SelectedCertificateInputResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
