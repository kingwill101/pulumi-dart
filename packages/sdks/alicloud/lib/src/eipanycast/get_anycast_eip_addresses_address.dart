// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_anycast_eip_addresses_address_anycast_eip_bind_info_list.dart';

class GetAnycastEipAddressesAddress {
  /// Anycast EIP instance account ID.
  final pulumi.Input<int> aliUid;
  /// Anycast EIP instance name.
  final pulumi.Input<String> anycastEipAddressName;
  /// AnycastEip binding information.
  final pulumi.Input<List<GetAnycastEipAddressesAddressAnycastEipBindInfoList>> anycastEipBindInfoLists;
  /// Anycast EIP instance ID.
  final pulumi.Input<String> anycastId;
  /// The peak bandwidth of the Anycast EIP instance, in Mbps.
  final pulumi.Input<int> bandwidth;
  /// Anycast EIP instance account BID.
  final pulumi.Input<String> bid;
  /// The business status of the Anycast EIP instance. -`Normal`: Normal state. -`FinancialLocked`: The status of arrears locked.
  final pulumi.Input<String> businessStatus;
  /// Anycast EIP instance description.
  final pulumi.Input<String> description;
  /// The ID of the Anycast Eip Address.
  final pulumi.Input<String> id;
  /// The billing method of Anycast EIP instance. `PayByBandwidth`: refers to the method of billing based on traffic.
  final pulumi.Input<String> internetChargeType;
  /// Anycast EIP instance IP address.
  final pulumi.Input<String> ipAddress;
  /// The payment model of Anycast EIP instance. "PostPaid": Refers to the post-paid mode.
  final pulumi.Input<String> paymentType;
  /// Anycast EIP instance access area. "international": Refers to areas outside of Mainland China.
  final pulumi.Input<String> serviceLocation;
  /// IP status。- `Associating`, `Unassociating`, `Allocated`, `Associated`, `Modifying`, `Releasing`, `Released`.
  final pulumi.Input<String> status;

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
  const GetAnycastEipAddressesAddress({
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
      'anycastEipBindInfoLists': pulumi.Input.mapInputValue<List<GetAnycastEipAddressesAddressAnycastEipBindInfoList>, List<Map<String, dynamic>>>(anycastEipBindInfoLists, (value) => pulumi.Input.encodeList<GetAnycastEipAddressesAddressAnycastEipBindInfoList, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      aliUid: pulumi.Input.fromValue(map['aliUid'] as int),
      anycastEipAddressName: pulumi.Input.fromValue(map['anycastEipAddressName'] as String),
      anycastEipBindInfoLists: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAnycastEipAddressesAddressAnycastEipBindInfoList>(map['anycastEipBindInfoLists']!, (value) => GetAnycastEipAddressesAddressAnycastEipBindInfoList.fromMap((value as Map).cast<String, dynamic>()))),
      anycastId: pulumi.Input.fromValue(map['anycastId'] as String),
      bandwidth: pulumi.Input.fromValue(map['bandwidth'] as int),
      bid: pulumi.Input.fromValue(map['bid'] as String),
      businessStatus: pulumi.Input.fromValue(map['businessStatus'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      internetChargeType: pulumi.Input.fromValue(map['internetChargeType'] as String),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      serviceLocation: pulumi.Input.fromValue(map['serviceLocation'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

