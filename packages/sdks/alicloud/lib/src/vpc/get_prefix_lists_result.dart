// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_prefix_lists_list.dart';

/// Result data returned by getPrefixLists.
class GetPrefixListsResult {
  final bool? enableDetails;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;

  /// A list of Vpc Prefix Lists. Each element contains the following attributes:
  final List<GetPrefixListsList> lists;
  final String? nameRegex;

  /// A list of Prefix List names.
  final List<String> names;
  final String? outputFile;

  /// The name of the prefix list.
  final String? prefixListName;

  /// Creates a new [GetPrefixListsResult].
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [lists] A list of Vpc Prefix Lists. Each element contains the following attributes:
  /// [nameRegex] Optional.
  /// [names] A list of Prefix List names.
  /// [outputFile] Optional.
  /// [prefixListName] The name of the prefix list.
  GetPrefixListsResult({
    this.enableDetails,
    required this.id,
    required this.ids,
    required this.lists,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.prefixListName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'lists':
          pulumi.Input.encodeList<GetPrefixListsList, Map<String, dynamic>>(
            lists,
            (value) => value.toMap(),
          ),
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'prefixListName': ?prefixListName,
    };
  }

  factory GetPrefixListsResult.fromMap(Map<String, dynamic> map) {
    return GetPrefixListsResult(
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      lists: pulumi.Input.decodeList<GetPrefixListsList>(
        map['lists']!,
        (value) =>
            GetPrefixListsList.fromMap((value as Map).cast<String, dynamic>()),
      ),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      prefixListName: (() {
        final guardedValue = map['prefixListName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
