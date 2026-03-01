// ignore_for_file: unused_element, unnecessary_cast


class GetProjectsProject {
  /// The billing type. **Note:** This parameter is deprecated from 2021-04-01.
  final String billingType;
  /// The maximum number of requests that can be processed per second. **Note:** This parameter is deprecated from 2021-04-01.
  final int computeUnit;
  /// The creation time of project.
  final String createTime;
  /// The service address of project.
  final String endpoint;
  /// The ID of project.
  final String id;
  /// The modification time of project.
  final String modifyTime;
  /// The name of project.
  final String project;
  /// The service role authorized to the Intelligent Media Management service to access other cloud resources.
  final String serviceRole;
  /// The type of project.
  final String type;

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
      billingType: map['billingType'] as String,
      computeUnit: map['computeUnit'] as int,
      createTime: map['createTime'] as String,
      endpoint: map['endpoint'] as String,
      id: map['id'] as String,
      modifyTime: map['modifyTime'] as String,
      project: map['project'] as String,
      serviceRole: map['serviceRole'] as String,
      type: map['type'] as String,
    );
  }
}

