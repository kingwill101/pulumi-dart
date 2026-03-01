// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_file_filter_details.dart';
import 'blob_filter_details.dart';
import 'filter_file_details.dart';

/// Details of the filtering the transfer of data.
class TransferFilterDetails {
  /// Filter details to transfer Azure files.
  final AzureFileFilterDetails? azureFileFilterDetails;
  /// Filter details to transfer blobs.
  final BlobFilterDetails? blobFilterDetails;
  /// Type of the account of data.
  final String dataAccountType;
  /// Details of the filter files to be used for data transfer.
  final List<FilterFileDetails>? filterFileDetails;

  /// Creates a new [TransferFilterDetails].
  /// [azureFileFilterDetails] Filter details to transfer Azure files.
  /// [blobFilterDetails] Filter details to transfer blobs.
  /// [dataAccountType] Type of the account of data.
  /// [filterFileDetails] Details of the filter files to be used for data transfer.
  TransferFilterDetails({
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
      'filterFileDetails': ?filterFileDetails == null ? null : pulumi.Input.encodeList<FilterFileDetails, Map<String, dynamic>>(filterFileDetails!, (value) => value.toMap()),
    };
  }

  factory TransferFilterDetails.fromMap(Map<String, dynamic> map) {
    return TransferFilterDetails(
      azureFileFilterDetails: map['azureFileFilterDetails'] == null ? null : AzureFileFilterDetails.fromMap((map['azureFileFilterDetails'] as Map).cast<String, dynamic>()),
      blobFilterDetails: map['blobFilterDetails'] == null ? null : BlobFilterDetails.fromMap((map['blobFilterDetails'] as Map).cast<String, dynamic>()),
      dataAccountType: map['dataAccountType'] as String,
      filterFileDetails: map['filterFileDetails'] == null ? null : pulumi.Input.decodeList<FilterFileDetails>(map['filterFileDetails'], (value) => FilterFileDetails.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

