// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_box_customer_disk_job_details.dart';
import 'job_delivery_info.dart';
import 'resource_identity.dart';
import 'sku.dart';

/// {@template pulumi_databox_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_databox_job_args_doc}
class JobArgs {
  /// Delivery Info of Job.
  final pulumi.Input<JobDeliveryInfo>? deliveryInfo;
  /// Delivery type of Job.
  final pulumi.Input<String>? deliveryType;
  /// Details of a job run. This field will only be sent for expand details filter.
  final pulumi.Input<DataBoxCustomerDiskJobDetails>? details;
  /// Msi identity of the resource
  final pulumi.Input<ResourceIdentity>? identity;
  /// The name of the job Resource within the specified resource group. job names must be between 3 and 24 characters in length and use any alphanumeric and underscore only
  final pulumi.Input<String>? jobName;
  /// The location of the resource. This will be one of the supported and registered Azure Regions (e.g. West US, East US, Southeast Asia, etc.). The region of a resource cannot be changed once it is created, but if an identical region is specified on update the request will succeed.
  final pulumi.Input<String>? location;
  /// The Resource Group Name
  final pulumi.Input<String> resourceGroupName;
  /// The sku type.
  final pulumi.Input<Sku> sku;
  /// The list of key value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups).
  final pulumi.Input<Map<String, String>>? tags;
  /// Type of the data transfer.
  final pulumi.Input<String> transferType;

  /// Creates a new [JobArgs].
  /// [deliveryInfo] Delivery Info of Job.
  /// [deliveryType] Delivery type of Job.
  /// [details] Details of a job run. This field will only be sent for expand details filter.
  /// [identity] Msi identity of the resource
  /// [jobName] The name of the job Resource within the specified resource group. job names must be between 3 and 24 characters in length and use any alphanumeric and underscore only
  /// [location] The location of the resource. This will be one of the supported and registered Azure Regions (e.g. West US, East US, Southeast Asia, etc.). The region of a resource cannot be changed once it is created, but if an identical region is specified on update the request will succeed.
  /// [resourceGroupName] The Resource Group Name
  /// [sku] The sku type.
  /// [tags] The list of key value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups).
  /// [transferType] Type of the data transfer.
  JobArgs({
    pulumi.Output<JobDeliveryInfo>? deliveryInfo,
    pulumi.Output<String>? deliveryType,
    pulumi.Output<DataBoxCustomerDiskJobDetails>? details,
    pulumi.Output<ResourceIdentity>? identity,
    pulumi.Output<String>? jobName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<Sku> sku,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> transferType,
  }) :
      deliveryInfo = pulumi.Input.asOptionalInput<JobDeliveryInfo>(deliveryInfo),
      deliveryType = pulumi.Input.asOptionalInput<String>(deliveryType),
      details = pulumi.Input.asOptionalInput<DataBoxCustomerDiskJobDetails>(details),
      identity = pulumi.Input.asOptionalInput<ResourceIdentity>(identity),
      jobName = pulumi.Input.asOptionalInput<String>(jobName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      transferType = pulumi.Input.asInput<String>(transferType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryInfo': ?pulumi.Input.mapOptionalInputValue<JobDeliveryInfo, Map<String, dynamic>>(deliveryInfo, (value) => value.toMap()),
      'deliveryType': ?deliveryType,
      'details': ?pulumi.Input.mapOptionalInputValue<DataBoxCustomerDiskJobDetails, Map<String, dynamic>>(details, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ResourceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'jobName': ?jobName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'transferType': transferType,
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      deliveryInfo: map['deliveryInfo'] == null ? null : pulumi.Output.create<JobDeliveryInfo>(JobDeliveryInfo.fromMap((map['deliveryInfo'] as Map).cast<String, dynamic>())),
      deliveryType: map['deliveryType'] == null ? null : pulumi.Output.create<String>(map['deliveryType'] as String),
      details: map['details'] == null ? null : pulumi.Output.create<DataBoxCustomerDiskJobDetails>(DataBoxCustomerDiskJobDetails.fromMap((map['details'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<ResourceIdentity>(ResourceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      jobName: map['jobName'] == null ? null : pulumi.Output.create<String>(map['jobName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      transferType: pulumi.Output.create<String>(map['transferType'] as String),
    );
  }
}

