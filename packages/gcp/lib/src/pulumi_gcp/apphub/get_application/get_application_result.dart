// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_application_attribute/get_application_attribute.dart';
import '../get_application_scope/get_application_scope.dart';

/// Result data returned by getApplication.
class GetApplicationResult {
  final String applicationId;
  final List<GetApplicationAttribute> attributes;
  final String createTime;
  final String description;
  final String displayName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String name;
  final String project;
  final List<GetApplicationScope> scopes;
  final String state;
  final String uid;
  final String updateTime;

  GetApplicationResult({
    required this.applicationId,
    required this.attributes,
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.id,
    required this.location,
    required this.name,
    required this.project,
    required this.scopes,
    required this.state,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    map['attributes'] =
        Input.encodeList<GetApplicationAttribute, Map<String, dynamic>>(
            attributes, (value) => value.toMap());
    map['createTime'] = createTime;
    map['description'] = description;
    map['displayName'] = displayName;
    map['id'] = id;
    map['location'] = location;
    map['name'] = name;
    map['project'] = project;
    map['scopes'] = Input.encodeList<GetApplicationScope, Map<String, dynamic>>(
        scopes, (value) => value.toMap());
    map['state'] = state;
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationResult(
      applicationId: map['applicationId'] as String,
      attributes: Input.decodeList<GetApplicationAttribute>(
          map['attributes'],
          (value) => GetApplicationAttribute.fromMap(
              (value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      scopes: Input.decodeList<GetApplicationScope>(
          map['scopes'],
          (value) => GetApplicationScope.fromMap(
              (value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
