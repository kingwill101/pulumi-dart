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
    this.anycastEipAddressName,
    this.bindInstanceIds,
    this.businessStatus,
    this.ids,
    this.internetChargeType,
    this.ipAddress,
    this.nameRegex,
    this.outputFile,
    this.paymentType,
    this.serviceLocation,
    this.status,
  });

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
      anycastEipAddressName: (() { final guardedValue = map['anycastEipAddressName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bindInstanceIds: (() { final guardedValue = map['bindInstanceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      businessStatus: (() { final guardedValue = map['businessStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      internetChargeType: (() { final guardedValue = map['internetChargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceLocation: (() { final guardedValue = map['serviceLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

