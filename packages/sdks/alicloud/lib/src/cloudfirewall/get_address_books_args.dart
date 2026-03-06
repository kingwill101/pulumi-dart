// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfirewall_get_address_books_get_address_books_args_doc}
/// Arguments for getAddressBooks.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_get_address_books_get_address_books_args_doc}
class GetAddressBooksArgs {
  /// The type of the Address Book. Valid values: `ip`, `ipv6`, `domain`, `port`, `tag`.
  /// **NOTE:** From version 1.213.1, `group_type` can be set to `ipv6`, `domain`, `port`.
  final pulumi.Input<String>? groupType;
  /// A list of Address Book IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results Address Book name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetAddressBooksArgs].
  /// [groupType] The type of the Address Book. Valid values: `ip`, `ipv6`, `domain`, `port`, `tag`.
  /// [ids] A list of Address Book IDs.
  /// [nameRegex] A regex string to filter results Address Book name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  const GetAddressBooksArgs({
    this.groupType,
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupType': ?groupType,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetAddressBooksArgs.fromMap(Map<String, dynamic> map) {
    return GetAddressBooksArgs(
      groupType: (() { final guardedValue = map['groupType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

