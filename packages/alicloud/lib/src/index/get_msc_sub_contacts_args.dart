// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_msc_sub_contacts_get_msc_sub_contacts_args_doc}
/// Arguments for getMscSubContacts.
/// {@endtemplate}
/// {@macro pulumi_index_get_msc_sub_contacts_get_msc_sub_contacts_args_doc}
class GetMscSubContactsArgs {
  /// A list of Contact IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Contact name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetMscSubContactsArgs].
  /// [ids] A list of Contact IDs.
  /// [nameRegex] A regex string to filter results by Contact name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetMscSubContactsArgs({
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetMscSubContactsArgs.fromMap(Map<String, dynamic> map) {
    return GetMscSubContactsArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

