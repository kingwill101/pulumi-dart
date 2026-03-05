// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_share.dart';
import 'selected_certificate_input.dart';
import 'sql_connection_info.dart';

/// Input for the task that gets TDE certificates in Base64 encoded format.
class GetTdeCertificatesSqlTaskInput {
  /// Backup file share information for file share to be used for temporarily storing files.
  final pulumi.Input<FileShare> backupFileShare;
  /// Connection information for SQL Server
  final pulumi.Input<SqlConnectionInfo> connectionInfo;
  /// List containing certificate names and corresponding password to use for encrypting the exported certificate.
  final pulumi.Input<List<SelectedCertificateInput>> selectedCertificates;

  /// Creates a new [GetTdeCertificatesSqlTaskInput].
  /// [backupFileShare] Backup file share information for file share to be used for temporarily storing files.
  /// [connectionInfo] Connection information for SQL Server
  /// [selectedCertificates] List containing certificate names and corresponding password to use for encrypting the exported certificate.
  GetTdeCertificatesSqlTaskInput({
    required this.backupFileShare,
    required this.connectionInfo,
    required this.selectedCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupFileShare': pulumi.Input.mapInputValue<FileShare, Map<String, dynamic>>(backupFileShare, (value) => value.toMap()),
      'connectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfo, Map<String, dynamic>>(connectionInfo, (value) => value.toMap()),
      'selectedCertificates': pulumi.Input.mapInputValue<List<SelectedCertificateInput>, List<Map<String, dynamic>>>(selectedCertificates, (value) => pulumi.Input.encodeList<SelectedCertificateInput, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetTdeCertificatesSqlTaskInput.fromMap(Map<String, dynamic> map) {
    return GetTdeCertificatesSqlTaskInput(
      backupFileShare: pulumi.Input.fromValue(FileShare.fromMap((map['backupFileShare']! as Map).cast<String, dynamic>())),
      connectionInfo: pulumi.Input.fromValue(SqlConnectionInfo.fromMap((map['connectionInfo']! as Map).cast<String, dynamic>())),
      selectedCertificates: pulumi.Input.fromValue(pulumi.Input.decodeList<SelectedCertificateInput>(map['selectedCertificates']!, (value) => SelectedCertificateInput.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

