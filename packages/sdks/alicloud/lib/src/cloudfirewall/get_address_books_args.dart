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
  GetAddressBooksArgs({
    pulumi.Output<String>? groupType,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      groupType = pulumi.Input.asOptionalInput<String>(groupType),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

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
      groupType: map['groupType'] == null ? null : pulumi.Output.create<String>(map['groupType'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

