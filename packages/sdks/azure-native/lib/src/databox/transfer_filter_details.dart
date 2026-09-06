// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_file_filter_details.dart';
import 'blob_filter_details.dart';
import 'filter_file_details.dart';

/// Details of the filtering the transfer of data.
class TransferFilterDetails {
  /// Filter details to transfer Azure files.
  final pulumi.Input<AzureFileFilterDetails?>? azureFileFilterDetails;
  /// Filter details to transfer blobs.
  final pulumi.Input<BlobFilterDetails?>? blobFilterDetails;
  /// Type of the account of data.
  final pulumi.Input<dynamic> dataAccountType;
  /// Details of the filter files to be used for data transfer.
  final pulumi.Input<List<FilterFileDetails>?>? filterFileDetails;

  /// Creates a new [TransferFilterDetails].
  /// [azureFileFilterDetails] Filter details to transfer Azure files.
  /// [blobFilterDetails] Filter details to transfer blobs.
  /// [dataAccountType] Type of the account of data.
  /// [filterFileDetails] Details of the filter files to be used for data transfer.
  TransferFilterDetails({
    this.azureFileFilterDetails,
    this.blobFilterDetails,
    pulumi.Input<dynamic>? dataAccountType,
    this.filterFileDetails,
  }) : dataAccountType = dataAccountType ?? pulumi.Input.fromValue('StorageAccount');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureFileFilterDetails': ?pulumi.Input.mapOptionalInputValue<AzureFileFilterDetails, Map<String, dynamic>>(azureFileFilterDetails, (value) => value.toMap()),
      'blobFilterDetails': ?pulumi.Input.mapOptionalInputValue<BlobFilterDetails, Map<String, dynamic>>(blobFilterDetails, (value) => value.toMap()),
      'dataAccountType': dataAccountType,
      'filterFileDetails': ?pulumi.Input.mapOptionalInputValue<List<FilterFileDetails>, List<Map<String, dynamic>>>(filterFileDetails, (value) => pulumi.Input.encodeList<FilterFileDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TransferFilterDetails.fromMap(Map<String, dynamic> map) {
    return TransferFilterDetails(
      azureFileFilterDetails: (() { final guardedValue = map['azureFileFilterDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureFileFilterDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      blobFilterDetails: (() { final guardedValue = map['blobFilterDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BlobFilterDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataAccountType: pulumi.Input.fromValue(map['dataAccountType']),
      filterFileDetails: (() { final guardedValue = map['filterFileDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FilterFileDetails>(guardedValue, (value) => FilterFileDetails.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
