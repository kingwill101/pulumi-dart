// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_auto_snap_shot_policies_auto_snap_shot_policy.dart';

/// Result data returned by getAutoSnapShotPolicies.
class GetAutoSnapShotPoliciesResult {
  /// A list of Auto Snap Shot Policy Entries. Each element contains the following attributes:
  final List<GetAutoSnapShotPoliciesAutoSnapShotPolicy> autoSnapShotPolicies;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of Auto Snap Shot Policy IDs.
  final List<String> ids;
  final String? nameRegex;

  /// A list of Auto Snap Shot Policy names.
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;

  /// Creates a new [GetAutoSnapShotPoliciesResult].
  /// [autoSnapShotPolicies] A list of Auto Snap Shot Policy Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Auto Snap Shot Policy IDs.
  /// [nameRegex] Optional.
  /// [names] A list of Auto Snap Shot Policy names.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetAutoSnapShotPoliciesResult({
    required this.autoSnapShotPolicies,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoSnapShotPolicies':
          pulumi.Input.encodeList<
            GetAutoSnapShotPoliciesAutoSnapShotPolicy,
            Map<String, dynamic>
          >(autoSnapShotPolicies, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetAutoSnapShotPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetAutoSnapShotPoliciesResult(
      autoSnapShotPolicies:
          pulumi.Input.decodeList<GetAutoSnapShotPoliciesAutoSnapShotPolicy>(
            map['autoSnapShotPolicies']!,
            (value) => GetAutoSnapShotPoliciesAutoSnapShotPolicy.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
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
      pageNumber: (() {
        final guardedValue = map['pageNumber'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      pageSize: (() {
        final guardedValue = map['pageSize'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
    );
  }
}
