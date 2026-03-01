// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eipanycast_get_anycast_eip_addresses_get_anycast_eip_addresses_args_doc}
/// Arguments for getAnycastEipAddresses.
/// {@endtemplate}
/// {@macro pulumi_eipanycast_get_anycast_eip_addresses_get_anycast_eip_addresses_args_doc}
class GetAnycastEipAddressesArgs {
  /// Anycast EIP instance name.
  final pulumi.Input<String>? anycastEipAddressName;
  /// The bind instance ids.
  final pulumi.Input<List<String>>? bindInstanceIds;
  /// The business status of the Anycast EIP instance. -`Normal`: Normal state. -`FinancialLocked`: The status of arrears locked.
  final pulumi.Input<String>? businessStatus;
  /// A list of Anycast Eip Address IDs.
  final pulumi.Input<List<String>>? ids;
  /// The billing method of Anycast EIP instance. `PayByBandwidth`: refers to the method of billing based on traffic.
  final pulumi.Input<String>? internetChargeType;
  /// Anycast EIP instance IP address.
  final pulumi.Input<String>? ipAddress;
  /// A regex string to filter results by Anycast Eip Address name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The payment model of Anycast EIP instance. `PayAsYouGo`: Refers to the post-paid mode. Default value is `PayAsYouGo`.
  final pulumi.Input<String>? paymentType;
  /// Anycast EIP instance access area. `international`: Refers to areas outside of Mainland China.
  final pulumi.Input<String>? serviceLocation;
  /// IP status。- `Associating`, `Unassociating`, `Allocated`, `Associated`, `Modifying`, `Releasing`, `Released`. Valid values: `Allocated`, `Associated`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetAnycastEipAddressesArgs].
  /// [anycastEipAddressName] Anycast EIP instance name.
  /// [bindInstanceIds] The bind instance ids.
  /// [businessStatus] The business status of the Anycast EIP instance. -`Normal`: Normal state. -`FinancialLocked`: The status of arrears locked.
  /// [ids] A list of Anycast Eip Address IDs.
  /// [internetChargeType] The billing method of Anycast EIP instance. `PayByBandwidth`: refers to the method of billing based on traffic.
  /// [ipAddress] Anycast EIP instance IP address.
  /// [nameRegex] A regex string to filter results by Anycast Eip Address name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [paymentType] The payment model of Anycast EIP instance. `PayAsYouGo`: Refers to the post-paid mode. Default value is `PayAsYouGo`.
  /// [serviceLocation] Anycast EIP instance access area. `international`: Refers to areas outside of Mainland China.
  /// [status] IP status。- `Associating`, `Unassociating`, `Allocated`, `Associated`, `Modifying`, `Releasing`, `Released`. Valid values: `Allocated`, `Associated`.
  GetAnycastEipAddressesArgs({
    pulumi.Output<String>? anycastEipAddressName,
    pulumi.Output<List<String>>? bindInstanceIds,
    pulumi.Output<String>? businessStatus,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? internetChargeType,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? serviceLocation,
    pulumi.Output<String>? status,
  }) :
      anycastEipAddressName = pulumi.Input.asOptionalInput<String>(anycastEipAddressName),
      bindInstanceIds = pulumi.Input.asOptionalInput<List<String>>(bindInstanceIds),
      businessStatus = pulumi.Input.asOptionalInput<String>(businessStatus),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      internetChargeType = pulumi.Input.asOptionalInput<String>(internetChargeType),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      serviceLocation = pulumi.Input.asOptionalInput<String>(serviceLocation),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anycastEipAddressName': ?anycastEipAddressName,
      'bindInstanceIds': ?bindInstanceIds,
      'businessStatus': ?businessStatus,
      'ids': ?ids,
      'internetChargeType': ?internetChargeType,
      'ipAddress': ?ipAddress,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'paymentType': ?paymentType,
      'serviceLocation': ?serviceLocation,
      'status': ?status,
    };
  }

  factory GetAnycastEipAddressesArgs.fromMap(Map<String, dynamic> map) {
    return GetAnycastEipAddressesArgs(
      anycastEipAddressName: map['anycastEipAddressName'] == null ? null : pulumi.Output.create<String>(map['anycastEipAddressName'] as String),
      bindInstanceIds: map['bindInstanceIds'] == null ? null : pulumi.Output.create<List<String>>((map['bindInstanceIds'] as List).cast<String>()),
      businessStatus: map['businessStatus'] == null ? null : pulumi.Output.create<String>(map['businessStatus'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      internetChargeType: map['internetChargeType'] == null ? null : pulumi.Output.create<String>(map['internetChargeType'] as String),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      serviceLocation: map['serviceLocation'] == null ? null : pulumi.Output.create<String>(map['serviceLocation'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

