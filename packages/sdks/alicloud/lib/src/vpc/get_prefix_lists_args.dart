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
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefixListName: (() { final guardedValue = map['prefixListName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

