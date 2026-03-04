// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policies_policy.dart';

/// Result data returned by getPolicies.
class GetPoliciesResult {
  final bool? enableDetails;
  final String? groupName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;

  /// (Available since v1.42.0) A list of Policy names.
  final List<String> names;
  final String? outputFile;

  /// A list of Policy. Each element contains the following attributes:
  final List<GetPoliciesPolicy> policies;
  final String? roleName;

  /// (Available since v1.262.1) The tags of the Policy.
  final Map<String, String>? tags;

  /// The type of the policy.
  final String? type;

  /// (Removed since v1.262.1) Field `user_name` has been removed from provider version 1.262.1.
  final String? userName;

  /// Creates a new [GetPoliciesResult].
  /// [enableDetails] Optional.
  /// [groupName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] (Available since v1.42.0) A list of Policy names.
  /// [outputFile] Optional.
  /// [policies] A list of Policy. Each element contains the following attributes:
  /// [roleName] Optional.
  /// [tags] (Available since v1.262.1) The tags of the Policy.
  /// [type] The type of the policy.
  /// [userName] (Removed since v1.262.1) Field `user_name` has been removed from provider version 1.262.1.
  GetPoliciesResult({
    this.enableDetails,
    this.groupName,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.policies,
    this.roleName,
    this.tags,
    this.type,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'groupName': ?groupName,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'policies':
          pulumi.Input.encodeList<GetPoliciesPolicy, Map<String, dynamic>>(
            policies,
            (value) => value.toMap(),
          ),
      'roleName': ?roleName,
      'tags': ?tags,
      'type': ?type,
      'userName': ?userName,
    };
  }

  factory GetPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetPoliciesResult(
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      groupName: (() {
        final guardedValue = map['groupName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
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
      policies: pulumi.Input.decodeList<GetPoliciesPolicy>(
        map['policies']!,
        (value) =>
            GetPoliciesPolicy.fromMap((value as Map).cast<String, dynamic>()),
      ),
      roleName: (() {
        final guardedValue = map['roleName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      userName: (() {
        final guardedValue = map['userName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
