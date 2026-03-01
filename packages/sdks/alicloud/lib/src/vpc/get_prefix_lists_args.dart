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
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? prefixListName,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      prefixListName = pulumi.Input.asOptionalInput<String>(prefixListName);

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
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      prefixListName: map['prefixListName'] == null ? null : pulumi.Output.create<String>(map['prefixListName'] as String),
    );
  }
}

