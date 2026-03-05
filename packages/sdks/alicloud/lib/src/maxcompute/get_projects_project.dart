// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_projects_project_ip_white_list.dart';
import 'get_projects_project_properties.dart';
import 'get_projects_project_security_properties.dart';

class GetProjectsProject {
  /// Project description information. The length is 1 to 256 English or Chinese characters. The default value is blank.
  final pulumi.Input<String> comment;
  /// View the current storage size of the Project. The storage size is the same as the measurement size, that is, the compressed logical storage size collected by the Project.
  final pulumi.Input<String> costStorage;
  /// Represents the creation time of the project
  final pulumi.Input<String> createTime;
  /// Used to implement computing resource allocation.If the calculation Quota is not specified, the default Quota resource will be consumed by jobs initiated by the project. For more information about computing resource usage, see [Computing Resource Usage](https://www.alibabacloud.com/help/en/maxcompute/user-guide/use-of-computing-resources).
  final pulumi.Input<String> defaultQuota;
  /// IP whitelist
  final pulumi.Input<GetProjectsProjectIpWhiteList> ipWhiteList;
  /// Project owner
  final pulumi.Input<String> owner;
  /// The name begins with a letter, containing letters, digits, and underscores (_). It can be 3 to 28 characters in length and is globally unique.
  final pulumi.Input<String> projectName;
  /// Project base attributes
  final pulumi.Input<GetProjectsProjectProperties> properties;
  /// Security-related attributes
  final pulumi.Input<GetProjectsProjectSecurityProperties> securityProperties;
  /// The project status. Default value: AVAILABLE. Value: (AVAILABLE/READONLY/FROZEN/DELETING)
  final pulumi.Input<String> status;
  /// Project type
  final pulumi.Input<String> type;

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
      'ipWhiteList': pulumi.Input.mapInputValue<GetProjectsProjectIpWhiteList, Map<String, dynamic>>(ipWhiteList, (value) => value.toMap()),
      'owner': owner,
      'projectName': projectName,
      'properties': pulumi.Input.mapInputValue<GetProjectsProjectProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'securityProperties': pulumi.Input.mapInputValue<GetProjectsProjectSecurityProperties, Map<String, dynamic>>(securityProperties, (value) => value.toMap()),
      'status': status,
      'type': type,
    };
  }

  factory GetProjectsProject.fromMap(Map<String, dynamic> map) {
    return GetProjectsProject(
      comment: pulumi.Input.fromValue(map['comment'] as String),
      costStorage: pulumi.Input.fromValue(map['costStorage'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      defaultQuota: pulumi.Input.fromValue(map['defaultQuota'] as String),
      ipWhiteList: pulumi.Input.fromValue(GetProjectsProjectIpWhiteList.fromMap((map['ipWhiteList']! as Map).cast<String, dynamic>())),
      owner: pulumi.Input.fromValue(map['owner'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      properties: pulumi.Input.fromValue(GetProjectsProjectProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      securityProperties: pulumi.Input.fromValue(GetProjectsProjectSecurityProperties.fromMap((map['securityProperties']! as Map).cast<String, dynamic>())),
      status: pulumi.Input.fromValue(map['status'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

