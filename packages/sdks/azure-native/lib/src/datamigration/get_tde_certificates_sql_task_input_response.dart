// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_share_response.dart';
import 'selected_certificate_input_response.dart';
import 'sql_connection_info_response.dart';

/// Input for the task that gets TDE certificates in Base64 encoded format.
class GetTdeCertificatesSqlTaskInputResponse {
  /// Backup file share information for file share to be used for temporarily storing files.
  final FileShareResponse backupFileShare;
  /// Connection information for SQL Server
  final SqlConnectionInfoResponse connectionInfo;
  /// List containing certificate names and corresponding password to use for encrypting the exported certificate.
  final List<SelectedCertificateInputResponse> selectedCertificates;

  /// Creates a new [GetTdeCertificatesSqlTaskInputResponse].
  /// [backupFileShare] Backup file share information for file share to be used for temporarily storing files.
  /// [connectionInfo] Connection information for SQL Server
  /// [selectedCertificates] List containing certificate names and corresponding password to use for encrypting the exported certificate.
  GetTdeCertificatesSqlTaskInputResponse({
    required this.backupFileShare,
    required this.connectionInfo,
    required this.selectedCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupFileShare': backupFileShare.toMap(),
      'connectionInfo': connectionInfo.toMap(),
      'selectedCertificates': pulumi.Input.encodeList<SelectedCertificateInputResponse, Map<String, dynamic>>(selectedCertificates, (value) => value.toMap()),
    };
  }

  factory GetTdeCertificatesSqlTaskInputResponse.fromMap(Map<String, dynamic> map) {
    return GetTdeCertificatesSqlTaskInputResponse(
      backupFileShare: FileShareResponse.fromMap((map['backupFileShare'] as Map).cast<String, dynamic>()),
      connectionInfo: SqlConnectionInfoResponse.fromMap((map['connectionInfo'] as Map).cast<String, dynamic>()),
      selectedCertificates: pulumi.Input.decodeList<SelectedCertificateInputResponse>(map['selectedCertificates'], (value) => SelectedCertificateInputResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

