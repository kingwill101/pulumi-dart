// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_change_sets_set.dart';

/// Result data returned by getChangeSets.
class GetChangeSetsResult {
  final String? changeSetName;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetChangeSetsSet> sets;
  final String stackId;
  final String? status;

  /// Creates a new [GetChangeSetsResult].
  /// [changeSetName] Optional.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [sets] Required.
  /// [stackId] Required.
  /// [status] Optional.
  GetChangeSetsResult({
    this.changeSetName,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.sets,
    required this.stackId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeSetName': ?changeSetName,
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'sets': pulumi.Input.encodeList<GetChangeSetsSet, Map<String, dynamic>>(sets, (value) => value.toMap()),
      'stackId': stackId,
      'status': ?status,
    };
  }

  factory GetChangeSetsResult.fromMap(Map<String, dynamic> map) {
    return GetChangeSetsResult(
      changeSetName: map['changeSetName'] == null ? null : map['changeSetName']! as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      sets: pulumi.Input.decodeList<GetChangeSetsSet>(map['sets'], (value) => GetChangeSetsSet.fromMap((value as Map).cast<String, dynamic>())),
      stackId: map['stackId'] as String,
      status: map['status'] == null ? null : map['status']! as String,
    );
  }
}

