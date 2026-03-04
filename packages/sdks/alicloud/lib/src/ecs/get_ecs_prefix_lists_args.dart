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
    this.addressFamily,
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

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
      addressFamily: (() {
        final guardedValue = map['addressFamily'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
