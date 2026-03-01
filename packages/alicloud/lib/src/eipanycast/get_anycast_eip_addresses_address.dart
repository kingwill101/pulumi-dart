// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_anycast_eip_addresses_address_anycast_eip_bind_info_list.dart';

class GetAnycastEipAddressesAddress {
  /// Anycast EIP instance account ID.
  final int aliUid;
  /// Anycast EIP instance name.
  final String anycastEipAddressName;
  /// AnycastEip binding information.
  final List<GetAnycastEipAddressesAddressAnycastEipBindInfoList> anycastEipBindInfoLists;
  /// Anycast EIP instance ID.
  final String anycastId;
  /// The peak bandwidth of the Anycast EIP instance, in Mbps.
  final int bandwidth;
  /// Anycast EIP instance account BID.
  final String bid;
  /// The business status of the Anycast EIP instance. -`Normal`: Normal state. -`FinancialLocked`: The status of arrears locked.
  final String businessStatus;
  /// Anycast EIP instance description.
  final String description;
  /// The ID of the Anycast Eip Address.
  final String id;
  /// The billing method of Anycast EIP instance. `PayByBandwidth`: refers to the method of billing based on traffic.
  final String internetChargeType;
  /// Anycast EIP instance IP address.
  final String ipAddress;
  /// The payment model of Anycast EIP instance. "PostPaid": Refers to the post-paid mode.
  final String paymentType;
  /// Anycast EIP instance access area. "international": Refers to areas outside of Mainland China.
  final String serviceLocation;
  /// IP status。- `Associating`, `Unassociating`, `Allocated`, `Associated`, `Modifying`, `Releasing`, `Released`.
  final String status;

  /// Creates a new [GetAnycastEipAddressesAddress].
  /// [aliUid] Anycast EIP instance account ID.
  /// [anycastEipAddressName] Anycast EIP instance name.
  /// [anycastEipBindInfoLists] AnycastEip binding information.
  /// [anycastId] Anycast EIP instance ID.
  /// [bandwidth] The peak bandwidth of the Anycast EIP instance, in Mbps.
  /// [bid] Anycast EIP instance account BID.
  /// [businessStatus] The business status of the Anycast EIP instance. -`Normal`: Normal state. -`FinancialLocked`: The status of arrears locked.
  /// [description] Anycast EIP instance description.
  /// [id] The ID of the Anycast Eip Address.
  /// [internetChargeType] The billing method of Anycast EIP instance. `PayByBandwidth`: refers to the method of billing based on traffic.
  /// [ipAddress] Anycast EIP instance IP address.
  /// [paymentType] The payment model of Anycast EIP instance. "PostPaid": Refers to the post-paid mode.
  /// [serviceLocation] Anycast EIP instance access area. "international": Refers to areas outside of Mainland China.
  /// [status] IP status。- `Associating`, `Unassociating`, `Allocated`, `Associated`, `Modifying`, `Releasing`, `Released`.
  GetAnycastEipAddressesAddress({
    required this.aliUid,
    required this.anycastEipAddressName,
    required this.anycastEipBindInfoLists,
    required this.anycastId,
    required this.bandwidth,
    required this.bid,
    required this.businessStatus,
    required this.description,
    required this.id,
    required this.internetChargeType,
    required this.ipAddress,
    required this.paymentType,
    required this.serviceLocation,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliUid': aliUid,
      'anycastEipAddressName': anycastEipAddressName,
      'anycastEipBindInfoLists': pulumi.Input.encodeList<GetAnycastEipAddressesAddressAnycastEipBindInfoList, Map<String, dynamic>>(anycastEipBindInfoLists, (value) => value.toMap()),
      'anycastId': anycastId,
      'bandwidth': bandwidth,
      'bid': bid,
      'businessStatus': businessStatus,
      'description': description,
      'id': id,
      'internetChargeType': internetChargeType,
      'ipAddress': ipAddress,
      'paymentType': paymentType,
      'serviceLocation': serviceLocation,
      'status': status,
    };
  }

  factory GetAnycastEipAddressesAddress.fromMap(Map<String, dynamic> map) {
    return GetAnycastEipAddressesAddress(
      aliUid: map['aliUid'] as int,
      anycastEipAddressName: map['anycastEipAddressName'] as String,
      anycastEipBindInfoLists: pulumi.Input.decodeList<GetAnycastEipAddressesAddressAnycastEipBindInfoList>(map['anycastEipBindInfoLists'], (value) => GetAnycastEipAddressesAddressAnycastEipBindInfoList.fromMap((value as Map).cast<String, dynamic>())),
      anycastId: map['anycastId'] as String,
      bandwidth: map['bandwidth'] as int,
      bid: map['bid'] as String,
      businessStatus: map['businessStatus'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      internetChargeType: map['internetChargeType'] as String,
      ipAddress: map['ipAddress'] as String,
      paymentType: map['paymentType'] as String,
      serviceLocation: map['serviceLocation'] as String,
      status: map['status'] as String,
    );
  }
}

