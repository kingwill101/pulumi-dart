// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_prefix_lists_list.dart';

/// Result data returned by getEcsPrefixLists.
class GetEcsPrefixListsResult {
  final String? addressFamily;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final List<GetEcsPrefixListsList> lists;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetEcsPrefixListsResult].
  /// [addressFamily] Optional.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [lists] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  GetEcsPrefixListsResult({
    this.addressFamily,
    this.enableDetails,
    required this.id,
    required this.ids,
    required this.lists,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressFamily': ?addressFamily,
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'lists': pulumi.Input.encodeList<GetEcsPrefixListsList, Map<String, dynamic>>(lists, (value) => value.toMap()),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetEcsPrefixListsResult.fromMap(Map<String, dynamic> map) {
    return GetEcsPrefixListsResult(
      addressFamily: map['addressFamily'] == null ? null : map['addressFamily']! as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      lists: pulumi.Input.decodeList<GetEcsPrefixListsList>(map['lists'], (value) => GetEcsPrefixListsList.fromMap((value as Map).cast<String, dynamic>())),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
    );
  }
}

