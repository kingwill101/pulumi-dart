// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directmail_get_mail_addresses_get_mail_addresses_args_doc}
/// Arguments for getMailAddresses.
/// {@endtemplate}
/// {@macro pulumi_directmail_get_mail_addresses_get_mail_addresses_args_doc}
class GetMailAddressesArgs {
  /// A list of Mail Address IDs.
  final pulumi.Input<List<String>>? ids;
  /// The key word about account email address.
  final pulumi.Input<String>? keyWord;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Account type. Valid values: `batch`, `trigger`.
  final pulumi.Input<String>? sendtype;
  /// Account Status. Valid values: `0`, `1`. Freeze: 1, normal: 0.
  final pulumi.Input<String>? status;

  /// Creates a new [GetMailAddressesArgs].
  /// [ids] A list of Mail Address IDs.
  /// [keyWord] The key word about account email address.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [sendtype] Account type. Valid values: `batch`, `trigger`.
  /// [status] Account Status. Valid values: `0`, `1`. Freeze: 1, normal: 0.
  GetMailAddressesArgs({
    List<String>? ids,
    String? keyWord,
    String? outputFile,
    String? sendtype,
    String? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      keyWord = pulumi.Input.asOptionalInput<String>(keyWord),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      sendtype = pulumi.Input.asOptionalInput<String>(sendtype),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'keyWord': ?keyWord,
      'outputFile': ?outputFile,
      'sendtype': ?sendtype,
      'status': ?status,
    };
  }

  factory GetMailAddressesArgs.fromMap(Map<String, dynamic> map) {
    return GetMailAddressesArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      keyWord: map['keyWord'] == null ? null : map['keyWord'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      sendtype: map['sendtype'] == null ? null : map['sendtype'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

