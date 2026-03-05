// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_error_response.dart';
import 'data_box_customer_disk_job_details_response.dart';
import 'job_delivery_info_response.dart';
import 'resource_identity_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getJob.
class GetJobResult {
  /// Flag to indicate if all devices associated with the job are lost.
  final bool allDevicesLost;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Reason for cancellation.
  final String cancellationReason;
  /// Name of the stage where delay might be present.
  final String delayedStage;
  /// Delivery Info of Job.
  final JobDeliveryInfoResponse? deliveryInfo;
  /// Delivery type of Job.
  final String? deliveryType;
  /// Details of a job run. This field will only be sent for expand details filter.
  final DataBoxCustomerDiskJobDetailsResponse? details;
  /// Top level error for the job.
  final CloudErrorResponse error;
  /// Id of the object.
  final String id;
  /// Msi identity of the resource
  final ResourceIdentityResponse? identity;
  /// Describes whether the job is cancellable or not.
  final bool isCancellable;
  /// Flag to indicate cancellation of scheduled job.
  final bool isCancellableWithoutFee;
  /// Describes whether the job is deletable or not.
  final bool isDeletable;
  /// Is Prepare To Ship Enabled on this job
  final bool isPrepareToShipEnabled;
  /// Describes whether the shipping address is editable or not.
  final bool isShippingAddressEditable;
  /// The location of the resource. This will be one of the supported and registered Azure Regions (e.g. West US, East US, Southeast Asia, etc.). The region of a resource cannot be changed once it is created, but if an identical region is specified on update the request will succeed.
  final String location;
  /// Name of the object.
  final String name;
  /// The Editable status for Reverse Shipping Address and Contact Info
  final String reverseShippingDetailsUpdate;
  /// The Editable status for Reverse Transport preferences
  final String reverseTransportPreferenceUpdate;
  /// The sku type.
  final SkuResponse sku;
  /// Time at which the job was started in UTC ISO 8601 format.
  final String startTime;
  /// Name of the stage which is in progress.
  final String status;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// The list of key value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups).
  final Map<String, String>? tags;
  /// Type of the data transfer.
  final String transferType;
  /// Type of the object.
  final String type;

  /// Creates a new [GetJobResult].
  /// [allDevicesLost] Flag to indicate if all devices associated with the job are lost.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cancellationReason] Reason for cancellation.
  /// [delayedStage] Name of the stage where delay might be present.
  /// [deliveryInfo] Delivery Info of Job.
  /// [deliveryType] Delivery type of Job.
  /// [details] Details of a job run. This field will only be sent for expand details filter.
  /// [error] Top level error for the job.
  /// [id] Id of the object.
  /// [identity] Msi identity of the resource
  /// [isCancellable] Describes whether the job is cancellable or not.
  /// [isCancellableWithoutFee] Flag to indicate cancellation of scheduled job.
  /// [isDeletable] Describes whether the job is deletable or not.
  /// [isPrepareToShipEnabled] Is Prepare To Ship Enabled on this job
  /// [isShippingAddressEditable] Describes whether the shipping address is editable or not.
  /// [location] The location of the resource. This will be one of the supported and registered Azure Regions (e.g. West US, East US, Southeast Asia, etc.). The region of a resource cannot be changed once it is created, but if an identical region is specified on update the request will succeed.
  /// [name] Name of the object.
  /// [reverseShippingDetailsUpdate] The Editable status for Reverse Shipping Address and Contact Info
  /// [reverseTransportPreferenceUpdate] The Editable status for Reverse Transport preferences
  /// [sku] The sku type.
  /// [startTime] Time at which the job was started in UTC ISO 8601 format.
  /// [status] Name of the stage which is in progress.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] The list of key value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups).
  /// [transferType] Type of the data transfer.
  /// [type] Type of the object.
  GetJobResult({
    required this.allDevicesLost,
    required this.azureApiVersion,
    required this.cancellationReason,
    required this.delayedStage,
    this.deliveryInfo,
    this.deliveryType,
    this.details,
    required this.error,
    required this.id,
    this.identity,
    required this.isCancellable,
    required this.isCancellableWithoutFee,
    required this.isDeletable,
    required this.isPrepareToShipEnabled,
    required this.isShippingAddressEditable,
    required this.location,
    required this.name,
    required this.reverseShippingDetailsUpdate,
    required this.reverseTransportPreferenceUpdate,
    required this.sku,
    required this.startTime,
    required this.status,
    required this.systemData,
    this.tags,
    required this.transferType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allDevicesLost': allDevicesLost,
      'azureApiVersion': azureApiVersion,
      'cancellationReason': cancellationReason,
      'delayedStage': delayedStage,
      'deliveryInfo': ?deliveryInfo?.toMap(),
      'deliveryType': ?deliveryType,
      'details': ?details?.toMap(),
      'error': error.toMap(),
      'id': id,
      'identity': ?identity?.toMap(),
      'isCancellable': isCancellable,
      'isCancellableWithoutFee': isCancellableWithoutFee,
      'isDeletable': isDeletable,
      'isPrepareToShipEnabled': isPrepareToShipEnabled,
      'isShippingAddressEditable': isShippingAddressEditable,
      'location': location,
      'name': name,
      'reverseShippingDetailsUpdate': reverseShippingDetailsUpdate,
      'reverseTransportPreferenceUpdate': reverseTransportPreferenceUpdate,
      'sku': sku.toMap(),
      'startTime': startTime,
      'status': status,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'transferType': transferType,
      'type': type,
    };
  }

  factory GetJobResult.fromMap(Map<String, dynamic> map) {
    return GetJobResult(
      allDevicesLost: map['allDevicesLost'] as bool,
      azureApiVersion: map['azureApiVersion'] as String,
      cancellationReason: map['cancellationReason'] as String,
      delayedStage: map['delayedStage'] as String,
      deliveryInfo: (() { final guardedValue = map['deliveryInfo']; if (guardedValue == null) return null; return JobDeliveryInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      deliveryType: (() { final guardedValue = map['deliveryType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return DataBoxCustomerDiskJobDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      error: CloudErrorResponse.fromMap((map['error']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ResourceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      isCancellable: map['isCancellable'] as bool,
      isCancellableWithoutFee: map['isCancellableWithoutFee'] as bool,
      isDeletable: map['isDeletable'] as bool,
      isPrepareToShipEnabled: map['isPrepareToShipEnabled'] as bool,
      isShippingAddressEditable: map['isShippingAddressEditable'] as bool,
      location: map['location'] as String,
      name: map['name'] as String,
      reverseShippingDetailsUpdate: map['reverseShippingDetailsUpdate'] as String,
      reverseTransportPreferenceUpdate: map['reverseTransportPreferenceUpdate'] as String,
      sku: SkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      startTime: map['startTime'] as String,
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      transferType: map['transferType'] as String,
      type: map['type'] as String,
    );
  }
}

