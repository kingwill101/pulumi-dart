// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProjectsProject {
  /// The billing type. **Note:** This parameter is deprecated from 2021-04-01.
  final pulumi.Input<String> billingType;

  /// The maximum number of requests that can be processed per second. **Note:** This parameter is deprecated from 2021-04-01.
  final pulumi.Input<int> computeUnit;

  /// The creation time of project.
  final pulumi.Input<String> createTime;

  /// The service address of project.
  final pulumi.Input<String> endpoint;

  /// The ID of project.
  final pulumi.Input<String> id;

  /// The modification time of project.
  final pulumi.Input<String> modifyTime;

  /// The name of project.
  final pulumi.Input<String> project;

  /// The service role authorized to the Intelligent Media Management service to access other cloud resources.
  final pulumi.Input<String> serviceRole;

  /// The type of project.
  final pulumi.Input<String> type;

  /// Creates a new [GetProjectsProject].
  /// [billingType] The billing type. **Note:** This parameter is deprecated from 2021-04-01.
  /// [computeUnit] The maximum number of requests that can be processed per second. **Note:** This parameter is deprecated from 2021-04-01.
  /// [createTime] The creation time of project.
  /// [endpoint] The service address of project.
  /// [id] The ID of project.
  /// [modifyTime] The modification time of project.
  /// [project] The name of project.
  /// [serviceRole] The service role authorized to the Intelligent Media Management service to access other cloud resources.
  /// [type] The type of project.
  GetProjectsProject({
    required this.billingType,
    required this.computeUnit,
    required this.createTime,
    required this.endpoint,
    required this.id,
    required this.modifyTime,
    required this.project,
    required this.serviceRole,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingType': billingType,
      'computeUnit': computeUnit,
      'createTime': createTime,
      'endpoint': endpoint,
      'id': id,
      'modifyTime': modifyTime,
      'project': project,
      'serviceRole': serviceRole,
      'type': type,
    };
  }

  factory GetProjectsProject.fromMap(Map<String, dynamic> map) {
    return GetProjectsProject(
      billingType: pulumi.Input.fromValue(map['billingType'] as String),
      computeUnit: pulumi.Input.fromValue(map['computeUnit'] as int),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      modifyTime: pulumi.Input.fromValue(map['modifyTime'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      serviceRole: pulumi.Input.fromValue(map['serviceRole'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
