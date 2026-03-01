// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_credential_details_response.dart';

/// Credential details of the account.
class AccountCredentialDetailsResponse {
  /// Connection string of the account endpoint to use the account as a storage endpoint on the device.
  final String accountConnectionString;
  /// Name of the account.
  final String accountName;
  /// Type of the account.
  final String dataAccountType;
  /// Per share level unencrypted access credentials.
  final List<ShareCredentialDetailsResponse> shareCredentialDetails;

  /// Creates a new [AccountCredentialDetailsResponse].
  /// [accountConnectionString] Connection string of the account endpoint to use the account as a storage endpoint on the device.
  /// [accountName] Name of the account.
  /// [dataAccountType] Type of the account.
  /// [shareCredentialDetails] Per share level unencrypted access credentials.
  AccountCredentialDetailsResponse({
    required this.accountConnectionString,
    required this.accountName,
    required this.dataAccountType,
    required this.shareCredentialDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountConnectionString': accountConnectionString,
      'accountName': accountName,
      'dataAccountType': dataAccountType,
      'shareCredentialDetails': pulumi.Input.encodeList<ShareCredentialDetailsResponse, Map<String, dynamic>>(shareCredentialDetails, (value) => value.toMap()),
    };
  }

  factory AccountCredentialDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AccountCredentialDetailsResponse(
      accountConnectionString: map['accountConnectionString'] as String,
      accountName: map['accountName'] as String,
      dataAccountType: map['dataAccountType'] as String,
      shareCredentialDetails: pulumi.Input.decodeList<ShareCredentialDetailsResponse>(map['shareCredentialDetails'], (value) => ShareCredentialDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

