// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_ecs_prefix_lists_get_ecs_prefix_lists_args_doc}
/// Arguments for getEcsPrefixLists.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_ecs_prefix_lists_get_ecs_prefix_lists_args_doc}
class GetEcsPrefixListsArgs {
  /// The address family of the prefix list. Valid values: `IPv4`,`IPv6`. This parameter is empty by default, which indicates that all prefix lists are to be queried.
  final pulumi.Input<String>? addressFamily;
  final pulumi.Input<bool>? enableDetails;
  /// A list of Prefix List IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by `prefix_list_name`.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetEcsPrefixListsArgs].
  /// [addressFamily] The address family of the prefix list. Valid values: `IPv4`,`IPv6`. This parameter is empty by default, which indicates that all prefix lists are to be queried.
  /// [enableDetails] Optional.
  /// [ids] A list of Prefix List IDs.
  /// [nameRegex] A regex string to filter results by `prefix_list_name`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetEcsPrefixListsArgs({
    String? addressFamily,
    bool? enableDetails,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
  }) :
      addressFamily = pulumi.Input.asOptionalInput<String>(addressFamily),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressFamily': ?addressFamily,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetEcsPrefixListsArgs.fromMap(Map<String, dynamic> map) {
    return GetEcsPrefixListsArgs(
      addressFamily: map['addressFamily'] == null ? null : map['addressFamily'] as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

