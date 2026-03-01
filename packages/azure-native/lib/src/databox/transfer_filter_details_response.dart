// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_file_filter_details_response.dart';
import 'blob_filter_details_response.dart';
import 'filter_file_details_response.dart';

/// Details of the filtering the transfer of data.
class TransferFilterDetailsResponse {
  /// Filter details to transfer Azure files.
  final AzureFileFilterDetailsResponse? azureFileFilterDetails;
  /// Filter details to transfer blobs.
  final BlobFilterDetailsResponse? blobFilterDetails;
  /// Type of the account of data.
  final String dataAccountType;
  /// Details of the filter files to be used for data transfer.
  final List<FilterFileDetailsResponse>? filterFileDetails;

  /// Creates a new [TransferFilterDetailsResponse].
  /// [azureFileFilterDetails] Filter details to transfer Azure files.
  /// [blobFilterDetails] Filter details to transfer blobs.
  /// [dataAccountType] Type of the account of data.
  /// [filterFileDetails] Details of the filter files to be used for data transfer.
  TransferFilterDetailsResponse({
    this.azureFileFilterDetails,
    this.blobFilterDetails,
    required this.dataAccountType,
    this.filterFileDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureFileFilterDetails': ?azureFileFilterDetails == null ? null : azureFileFilterDetails!.toMap(),
      'blobFilterDetails': ?blobFilterDetails == null ? null : blobFilterDetails!.toMap(),
      'dataAccountType': dataAccountType,
      'filterFileDetails': ?filterFileDetails == null ? null : pulumi.Input.encodeList<FilterFileDetailsResponse, Map<String, dynamic>>(filterFileDetails!, (value) => value.toMap()),
    };
  }

  factory TransferFilterDetailsResponse.fromMap(Map<String, dynamic> map) {
    return TransferFilterDetailsResponse(
      azureFileFilterDetails: map['azureFileFilterDetails'] == null ? null : AzureFileFilterDetailsResponse.fromMap((map['azureFileFilterDetails'] as Map).cast<String, dynamic>()),
      blobFilterDetails: map['blobFilterDetails'] == null ? null : BlobFilterDetailsResponse.fromMap((map['blobFilterDetails'] as Map).cast<String, dynamic>()),
      dataAccountType: map['dataAccountType'] as String,
      filterFileDetails: map['filterFileDetails'] == null ? null : pulumi.Input.decodeList<FilterFileDetailsResponse>(map['filterFileDetails'], (value) => FilterFileDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

