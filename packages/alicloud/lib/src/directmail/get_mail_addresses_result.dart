// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_mail_addresses_address.dart';

/// Result data returned by getMailAddresses.
class GetMailAddressesResult {
  final List<GetMailAddressesAddress> addresses;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? keyWord;
  final String? outputFile;
  final String? sendtype;
  final String? status;

  /// Creates a new [GetMailAddressesResult].
  /// [addresses] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [keyWord] Optional.
  /// [outputFile] Optional.
  /// [sendtype] Optional.
  /// [status] Optional.
  GetMailAddressesResult({
    required this.addresses,
    required this.id,
    required this.ids,
    this.keyWord,
    this.outputFile,
    this.sendtype,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': pulumi.Input.encodeList<GetMailAddressesAddress, Map<String, dynamic>>(addresses, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'keyWord': ?keyWord,
      'outputFile': ?outputFile,
      'sendtype': ?sendtype,
      'status': ?status,
    };
  }

  factory GetMailAddressesResult.fromMap(Map<String, dynamic> map) {
    return GetMailAddressesResult(
      addresses: pulumi.Input.decodeList<GetMailAddressesAddress>(map['addresses'], (value) => GetMailAddressesAddress.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      keyWord: map['keyWord'] == null ? null : map['keyWord'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      sendtype: map['sendtype'] == null ? null : map['sendtype'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

