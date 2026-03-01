// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_information_response.dart';

/// Database VM details.
class DatabaseVmDetailsResponse {
  /// Defines the SAP Instance status.
  final String status;
  /// Storage details of all the Storage Accounts attached to the Database Virtual Machine. For e.g. NFS on AFS Shared Storage.
  final List<StorageInformationResponse> storageDetails;
  /// The virtual machine id.
  final String virtualMachineId;

  /// Creates a new [DatabaseVmDetailsResponse].
  /// [status] Defines the SAP Instance status.
  /// [storageDetails] Storage details of all the Storage Accounts attached to the Database Virtual Machine. For e.g. NFS on AFS Shared Storage.
  /// [virtualMachineId] The virtual machine id.
  DatabaseVmDetailsResponse({
    required this.status,
    required this.storageDetails,
    required this.virtualMachineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'storageDetails': pulumi.Input.encodeList<StorageInformationResponse, Map<String, dynamic>>(storageDetails, (value) => value.toMap()),
      'virtualMachineId': virtualMachineId,
    };
  }

  factory DatabaseVmDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseVmDetailsResponse(
      status: map['status'] as String,
      storageDetails: pulumi.Input.decodeList<StorageInformationResponse>(map['storageDetails'], (value) => StorageInformationResponse.fromMap((value as Map).cast<String, dynamic>())),
      virtualMachineId: map['virtualMachineId'] as String,
    );
  }
}

