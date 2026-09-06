// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_file_filter_details_response.dart';
import 'blob_filter_details_response.dart';
import 'filter_file_details_response.dart';

/// Details of the filtering the transfer of data.
class TransferFilterDetailsResponse {
  /// Filter details to transfer Azure files.
  final pulumi.Input<AzureFileFilterDetailsResponse?>? azureFileFilterDetails;
  /// Filter details to transfer blobs.
  final pulumi.Input<BlobFilterDetailsResponse?>? blobFilterDetails;
  /// Type of the account of data.
  final pulumi.Input<String> dataAccountType;
  /// Details of the filter files to be used for data transfer.
  final pulumi.Input<List<FilterFileDetailsResponse>?>? filterFileDetails;

  /// Creates a new [TransferFilterDetailsResponse].
  /// [azureFileFilterDetails] Filter details to transfer Azure files.
  /// [blobFilterDetails] Filter details to transfer blobs.
  /// [dataAccountType] Type of the account of data.
  /// [filterFileDetails] Details of the filter files to be used for data transfer.
  TransferFilterDetailsResponse({
    this.azureFileFilterDetails,
    this.blobFilterDetails,
    pulumi.Input<String>? dataAccountType,
    this.filterFileDetails,
  }) : dataAccountType = dataAccountType ?? pulumi.Input.fromValue('StorageAccount');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureFileFilterDetails': ?pulumi.Input.mapOptionalInputValue<AzureFileFilterDetailsResponse, Map<String, dynamic>>(azureFileFilterDetails, (value) => value.toMap()),
      'blobFilterDetails': ?pulumi.Input.mapOptionalInputValue<BlobFilterDetailsResponse, Map<String, dynamic>>(blobFilterDetails, (value) => value.toMap()),
      'dataAccountType': dataAccountType,
      'filterFileDetails': ?pulumi.Input.mapOptionalInputValue<List<FilterFileDetailsResponse>, List<Map<String, dynamic>>>(filterFileDetails, (value) => pulumi.Input.encodeList<FilterFileDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TransferFilterDetailsResponse.fromMap(Map<String, dynamic> map) {
    return TransferFilterDetailsResponse(
      azureFileFilterDetails: (() { final guardedValue = map['azureFileFilterDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureFileFilterDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      blobFilterDetails: (() { final guardedValue = map['blobFilterDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BlobFilterDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataAccountType: pulumi.Input.fromValue(map['dataAccountType'] as String),
      filterFileDetails: (() { final guardedValue = map['filterFileDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FilterFileDetailsResponse>(guardedValue, (value) => FilterFileDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
