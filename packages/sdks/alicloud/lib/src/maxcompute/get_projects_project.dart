// ignore_for_file: unused_element, unnecessary_cast

import 'get_projects_project_ip_white_list.dart';
import 'get_projects_project_properties.dart';
import 'get_projects_project_security_properties.dart';

class GetProjectsProject {
  /// Project description information. The length is 1 to 256 English or Chinese characters. The default value is blank.
  final String comment;
  /// View the current storage size of the Project. The storage size is the same as the measurement size, that is, the compressed logical storage size collected by the Project.
  final String costStorage;
  /// Represents the creation time of the project
  final String createTime;
  /// Used to implement computing resource allocation.If the calculation Quota is not specified, the default Quota resource will be consumed by jobs initiated by the project. For more information about computing resource usage, see [Computing Resource Usage](https://www.alibabacloud.com/help/en/maxcompute/user-guide/use-of-computing-resources).
  final String defaultQuota;
  /// IP whitelist
  final GetProjectsProjectIpWhiteList ipWhiteList;
  /// Project owner
  final String owner;
  /// The name begins with a letter, containing letters, digits, and underscores (_). It can be 3 to 28 characters in length and is globally unique.
  final String projectName;
  /// Project base attributes
  final GetProjectsProjectProperties properties;
  /// Security-related attributes
  final GetProjectsProjectSecurityProperties securityProperties;
  /// The project status. Default value: AVAILABLE. Value: (AVAILABLE/READONLY/FROZEN/DELETING)
  final String status;
  /// Project type
  final String type;

  /// Creates a new [GetProjectsProject].
  /// [comment] Project description information. The length is 1 to 256 English or Chinese characters. The default value is blank.
  /// [costStorage] View the current storage size of the Project. The storage size is the same as the measurement size, that is, the compressed logical storage size collected by the Project.
  /// [createTime] Represents the creation time of the project
  /// [defaultQuota] Used to implement computing resource allocation.If the calculation Quota is not specified, the default Quota resource will be consumed by jobs initiated by the project. For more information about computing resource usage, see [Computing Resource Usage](https://www.alibabacloud.com/help/en/maxcompute/user-guide/use-of-computing-resources).
  /// [ipWhiteList] IP whitelist
  /// [owner] Project owner
  /// [projectName] The name begins with a letter, containing letters, digits, and underscores (_). It can be 3 to 28 characters in length and is globally unique.
  /// [properties] Project base attributes
  /// [securityProperties] Security-related attributes
  /// [status] The project status. Default value: AVAILABLE. Value: (AVAILABLE/READONLY/FROZEN/DELETING)
  /// [type] Project type
  GetProjectsProject({
    required this.comment,
    required this.costStorage,
    required this.createTime,
    required this.defaultQuota,
    required this.ipWhiteList,
    required this.owner,
    required this.projectName,
    required this.properties,
    required this.securityProperties,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': comment,
      'costStorage': costStorage,
      'createTime': createTime,
      'defaultQuota': defaultQuota,
      'ipWhiteList': ipWhiteList.toMap(),
      'owner': owner,
      'projectName': projectName,
      'properties': properties.toMap(),
      'securityProperties': securityProperties.toMap(),
      'status': status,
      'type': type,
    };
  }

  factory GetProjectsProject.fromMap(Map<String, dynamic> map) {
    return GetProjectsProject(
      comment: map['comment'] as String,
      costStorage: map['costStorage'] as String,
      createTime: map['createTime'] as String,
      defaultQuota: map['defaultQuota'] as String,
      ipWhiteList: GetProjectsProjectIpWhiteList.fromMap((map['ipWhiteList'] as Map).cast<String, dynamic>()),
      owner: map['owner'] as String,
      projectName: map['projectName'] as String,
      properties: GetProjectsProjectProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      securityProperties: GetProjectsProjectSecurityProperties.fromMap((map['securityProperties'] as Map).cast<String, dynamic>()),
      status: map['status'] as String,
      type: map['type'] as String,
    );
  }
}

