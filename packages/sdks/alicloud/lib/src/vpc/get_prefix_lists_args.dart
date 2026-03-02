// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_prefix_lists_get_prefix_lists_args_doc}
/// Arguments for getPrefixLists.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_prefix_lists_get_prefix_lists_args_doc}
class GetPrefixListsArgs {
  /// Default to `true`. Set it to `false` can hide the `entrys` to output.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Prefix List IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Prefix List name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The name of the prefix list.
  final pulumi.Input<String>? prefixListName;

  /// Creates a new [GetPrefixListsArgs].
  /// [enableDetails] Default to `true`. Set it to `false` can hide the `entrys` to output.
  /// [ids] A list of Prefix List IDs.
  /// [nameRegex] A regex string to filter results by Prefix List name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [prefixListName] The name of the prefix list.
  GetPrefixListsArgs({
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.prefixListName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'prefixListName': ?prefixListName,
    };
  }

  factory GetPrefixListsArgs.fromMap(Map<String, dynamic> map) {
    return GetPrefixListsArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      prefixListName: map['prefixListName'] == null ? null : (map['prefixListName'] as String).input(),
    );
  }
}

